Class {
	#name : #MicWritingTarget,
	#superclass : #MicTarget,
	#category : #'Microdown - HTML'
}

{ #category : #testing }
MicWritingTarget class >> isAbstract [
	^ self == MicWritingTarget
]

{ #category : #accessing }
MicWritingTarget >> createConfigurationFrom: aPRProject [
	^ aPRProject configuration class new
		propertyAt: #_outputFormat put: self;
		parent: aPRProject configuration;
		yourself
]

{ #category : #accessing }
MicWritingTarget >> extension [
	
	^ self subclassResponsibility
]

{ #category : #accessing }
MicWritingTarget >> outputDirectoryName [
	
	^ self subclassResponsibility
]

{ #category : #preparation }
MicWritingTarget >> prepareForExecutionOn: aMicProject [
	| configuration outputDirectory outputFormat target source |
	"As a temporary solution, remove the old results folder before building the document.
	This should be replaced by a smarter solution replacing only modified files"
	aMicProject wipeout.
	configuration := self createConfigurationFrom: aMicProject.
	
	outputFormat := configuration propertyAt: #_outputFormat.
	target := aMicProject outputDirectory  / outputFormat outputDirectoryName resolve: (Path from: '_support').
	source := aMicProject baseDirectory /  '_support'.
	
	MicCopyPhase new
		sourceDirectory: source;
		destinationDirectory: target;
		executeOn: nil "We used a configuration context here that is not needed anymore".
		
	outputDirectory := aMicProject outputDirectory / self outputDirectoryName.
	aMicProject baseDirectory children
		do: [ :each | 
			((each basename beginsWith: '_') or: [ each basename beginsWith: '.' ])
				ifFalse: [ each copyAllTo: outputDirectory / each basename ] ]
]

{ #category : #accessing }
MicWritingTarget >> writerFor: aPRPillarConfiguration [ 
	
	self subclassResponsibility
]

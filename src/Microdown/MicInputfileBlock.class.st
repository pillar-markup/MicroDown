"
may be rename the class later
"
Class {
	#name : #MicInputfileBlock,
	#superclass : #MicAnnotationBlock,
	#category : #'Microdown-Extensions'
}

{ #category : #accessing }
MicInputfileBlock class >> tag [ 
	^ #inputfile
]

{ #category : #visiting }
MicInputfileBlock >> accept: aVisitor [
	aVisitor visitInputfile: self
]

{ #category : #accessing }
MicInputfileBlock >> fileWithConfiguration: aConfiguration [
	"I search my file."

	^ aConfiguration baseDirectory resolve: self path
]

{ #category : #accessing }
MicInputfileBlock >> path [

	^ self arguments at: 'path'
]

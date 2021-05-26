Class {
	#name : #MicTextualMicrodownExporter,
	#superclass : #MicrodownVisitor,
	#instVars : [
		'stream',
		'builder'
	],
	#category : #'Microdown-PrettyPrinter'
}

{ #category : #build }
MicTextualMicrodownExporter >> blockPrint: aMicText [

	| text |
	text := self classPrint: aMicText.
	text := text , ' "' , aMicText substring , '"'.
	^ text
]

{ #category : #build }
MicTextualMicrodownExporter >> classPrint: aMicFigure [

	^ aMicFigure class asString
]

{ #category : #initialization }
MicTextualMicrodownExporter >> initialize [ 
	super initialize.
	stream := (String new: 10000) writeStream.
	builder := MicroDownParser builder.
	builder setStream: stream.
]

{ #category : #build }
MicTextualMicrodownExporter >> parametersPrint: aDictionnary [

	| text lastKey |
	lastKey := aDictionnary keys last.
	text := 'parameters:'.
	aDictionnary keysAndValuesDo: [ :k :v |
		text := text , k ,'=', v.
		k = lastKey 
			ifFalse: [ 
				text := text , '&' ]].
	^ text
]

{ #category : #API }
MicTextualMicrodownExporter >> visit: aMicElement [

	aMicElement accept: self.
	^ stream contents
]

{ #category : #'visit-block' }
MicTextualMicrodownExporter >> visitAnchor: anAnchor [
	
	builder anchor: anAnchor label
]

{ #category : #'visit - format' }
MicTextualMicrodownExporter >> visitBold: aBoldFormat [

	builder bold: aBoldFormat substring
]

{ #category : #visiting }
MicTextualMicrodownExporter >> visitCode: aMicCodeBlock [ 
	
	 builder
		  codeblock: aMicCodeBlock body
		  firstLineAssociations: aMicCodeBlock argumentAssociations

]

{ #category : #'visit-block' }
MicTextualMicrodownExporter >> visitComment: aComment [

	builder comment: aComment text
]

{ #category : #'visit-block' }
MicTextualMicrodownExporter >> visitHeader: aHeader [

	builder 
		header: [:b | aHeader headerElements do: [ :each | each accept: self ] ] 
		withLevel: aHeader level
]

{ #category : #'visit-block' }
MicTextualMicrodownExporter >> visitHorizontalLine: aHorizontalLine [

	builder horizontalLine
]

{ #category : #'visit - format' }
MicTextualMicrodownExporter >> visitItalic: aMicItalicFormatBlock [
	
	builder italic: aMicItalicFormatBlock substring
]

{ #category : #'visit - format' }
MicTextualMicrodownExporter >> visitMonospace: aMonospaceFormat [

	builder monospace: aMonospaceFormat substring
]

{ #category : #'visit-block' }
MicTextualMicrodownExporter >> visitParagraph: aParagraph [
	builder 
		paragraph: [ :b | aParagraph children do: [:each |each accept: self]]
]

{ #category : #'visit - format' }
MicTextualMicrodownExporter >> visitText: aMicTextBlock [

	builder text: aMicTextBlock substring
]
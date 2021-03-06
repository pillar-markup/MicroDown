Class {
	#name : #ConfigurationForMicrodown,
	#superclass : #ChrysalMicrodownConfiguration,
	#category : #'Microdown - Transformer'
}

{ #category : #description }
ConfigurationForMicrodown class >> chrysalDescriptions [
	"I'm a generated method. I'm just here to help remembering how the class was generated. I should only be executed in presence of the configurationBuilder contained in the Chrysal package. Indeed the item objects only exist at compile-time and STON will recreate them."
	 ^ STON fromString: '[
	PathConfigurationItem {
		#propertyName : #bibFile,
		#default : ''book.bib'',
		#explanation : ''Identify the file to be taken as input for the bibliography. This is the .bib file used to resolve the ${cite:ref=Key}$ annotation.''
	},
	StringConfigurationItem {
		#propertyName : #title,
		#default : ''my super cool book''
	},
	StringConfigurationItem {
		#propertyName : #attribution,
		#default : ''me, myself and I''
	},
	NumberConfigurationItem {
		#propertyName : #headingLevelOffset,
		#default : 0,
		#explanation : ''Indicate how to convert from the level of a Pillar heading to the level of heading in your exported document.\r\tFor example, a headingLevelOffset of 3 converts a 1st level Pillar heading to an <h4>in HTML''
	},
	StringConfigurationItem {
		#propertyName : #series,
		#default : ''Square Bracket Associate Collection''
	},
	StringConfigurationItem {
		#propertyName : #keywords,
		#default : ''Pharo''
	},
	PathConfigurationItem {
		#propertyName : #outputDirectory,
		#default : ''build''
	},
	FolderConfigurationItem {
		#propertyName : #baseDirectory,
		#default : ''.''
	},
	FileConfigurationItem {
		#propertyName : #outputFile,
		#default : ''output'',
		#explanation : ''If separateOutputFiles is false, indicate the name of the output file. This can also be a write stream.''
	},
	FileConfigurationItem {
		#propertyName : #mainDocument,
		#default : ''book''
	},
	FileConfigurationItem {
		#propertyName : #inputFile,
		#default : ''book'',
		#explanation : ''The Pillar file that must be transformed. You can also specify an input file at the end of the command-line interface. Previously there was no default value''
	},
	StringConfigurationItem {
		#propertyName : #latexTemplate,
		#default : ''_support/templates/main.latex.mustache''
	},
	BooleanConfigurationItem {
		#propertyName : #scrambledEmailAddresses,
		#default : ''false''
	},
	BooleanConfigurationItem {
		#propertyName : #separateOutputFiles,
		#default : ''false'',
		#explanation : ''If true, each input file is exported to one output file. If false (the default), all input files are exported to outputFile.''
	},
	BooleanConfigurationItem {
		#propertyName : #renderStructureAsSlide,
		#default : ''true'',
		#explanation : ''When true (the default), Pillar will create a dedicated slide for each Pillar header. This parameter is meaningless when generating a written document''
	},
	StringConfigurationItem {
		#propertyName : #latexChapterTemplate,
		#default : ''_support/templates/chapter.latex.mustache''
	},
	StringConfigurationItem {
		#propertyName : #htmlTemplate,
		#default : ''_support/templates/html.mustache''
	},
	StringConfigurationItem {
		#propertyName : #htmlChapterTemplate,
		#default : ''_support/templates/html.mustache''
	},
	NewLineConfigurationItem {
		#propertyName : #newLine,
		#default : #platform,
		#explanation : ''The string that separates lines in the exported document. This is often either LF or CR\\+LF but any string is possible. Values are #(#cr #lf #crlf #unix #mac #dos #platform)'',
		#defaultKey : #platform
	},
	StringConfigurationItem {
		#propertyName : #latexWriter,
		#default : #''latex:sbabook''
	},
	StringConfigurationItem {
		#propertyName : #htmlWriter,
		#default : #html
	},
	NumberConfigurationItem {
		#propertyName : #slideInTemplateForDeckJS,
		#default : 1,
		#explanation : ''Number of slides in Template: Indicate the number of slides created by the DeckJS template. This is important to create anchors.''
	},
	CodeBlockDefaultLanguageItem {
		#propertyName : #defaultScriptLanguage,
		#explanation : ''Indicate the language in scripts when none is specified. This language is used for syntax highlighting. The currently supported languages are bash, css, html, http, json, javascript, pillar, sql, ston, shellcommands and smalltalk''
	},
	CompositeConfigurationItem {
		#propertyName : #levelSpecification,
		#default : #PRTitlePrinterSpecification,
		#fields : [
			#level,
			#renderAs,
			#capitalization,
			#numbering,
			#headerSize
		]
	},
	ListConfigurationItem {
		#propertyName : #levels,
		#default : #OrderedCollection,
		#element : #levelSpecification
	},
	PathConfigurationItem {
		#propertyName : #tocFile,
		#default : ''.'',
		#explanation : ''Identify the file to be taken as input for the root of the table of contents. When it is not specified, the table of contents will not be computed and displayed''
	}
]'
]

{ #category : #accessing }
ConfigurationForMicrodown >> attribution [
	"generated code"
	^ self propertyAt: #attribution ifAbsent: ['me, myself and I']
]

{ #category : #accessing }
ConfigurationForMicrodown >> attribution: aValue [
	"generated code"
	^ self propertyAt: #attribution put: aValue
]

{ #category : #accessing }
ConfigurationForMicrodown >> baseDirectory [
	"generated code"
	^ self propertyAt: #baseDirectory ifAbsent: [(FileSystem workingDirectory / '.')]
]

{ #category : #accessing }
ConfigurationForMicrodown >> baseDirectory: aValue [
	"generated code"
	^ self propertyAt: #baseDirectory put: aValue
]

{ #category : #accessing }
ConfigurationForMicrodown >> bibFile [
	"generated code"
	^ self propertyAt: #bibFile ifAbsent: [Path from: 'book.bib']
]

{ #category : #accessing }
ConfigurationForMicrodown >> bibFile: aValue [
	"generated code"
	^ self propertyAt: #bibFile put: aValue
]

{ #category : #conversion }
ConfigurationForMicrodown >> convertAttribution: aValue [
	"generated code"
	^ aValue
]

{ #category : #conversion }
ConfigurationForMicrodown >> convertBaseDirectory: aValue [
	"generated code"
	^ (FileSystem workingDirectory / aValue)
]

{ #category : #conversion }
ConfigurationForMicrodown >> convertBibFile: aValue [
	"generated code"
	^ Path from: aValue
]

{ #category : #conversion }
ConfigurationForMicrodown >> convertDefaultScriptLanguage: aValue [
	"generated code"
	^ PRAbstractScriptLanguage for: aValue
]

{ #category : #conversion }
ConfigurationForMicrodown >> convertHeadingLevelOffset: aValue [
	"generated code"
	^ aValue
]

{ #category : #conversion }
ConfigurationForMicrodown >> convertHtmlChapterTemplate: aValue [
	"generated code"
	^ aValue
]

{ #category : #conversion }
ConfigurationForMicrodown >> convertHtmlTemplate: aValue [
	"generated code"
	^ aValue
]

{ #category : #conversion }
ConfigurationForMicrodown >> convertHtmlWriter: aValue [
	"generated code"
	^ aValue
]

{ #category : #conversion }
ConfigurationForMicrodown >> convertInputFile: aValue [
	"generated code"
	^ (FileSystem workingDirectory / aValue)
]

{ #category : #conversion }
ConfigurationForMicrodown >> convertKeywords: aValue [
	"generated code"
	^ aValue
]

{ #category : #conversion }
ConfigurationForMicrodown >> convertLatexChapterTemplate: aValue [
	"generated code"
	^ aValue
]

{ #category : #conversion }
ConfigurationForMicrodown >> convertLatexTemplate: aValue [
	"generated code"
	^ aValue
]

{ #category : #conversion }
ConfigurationForMicrodown >> convertLatexWriter: aValue [
	"generated code"
	^ aValue
]

{ #category : #conversion }
ConfigurationForMicrodown >> convertLevelSpecification: aValue [
	"generated code"

	| composite |
	composite := MicTitlePrinterSpecification new.
	aValue
		do: [ :v | 
			"We ignore undeclared fields"
			(#(#level #renderAs #capitalization #numbering #headerSize) includes: v key asSymbol)
				ifTrue: [ | value |
					"if the element has been described we convert"
					value := (self declaredItems includes: v key asSymbol)
						ifTrue: [ self perform: (#convert , v key capitalized , ':') asSymbol with: v value ]
						ifFalse: [ v value ].
					composite perform: (v key , ':') asSymbol with: value ] ].
	^ composite
]

{ #category : #conversion }
ConfigurationForMicrodown >> convertLevels: aValue [
	"generated code"
	| elements |
	elements := OrderedCollection new.
	aValue do: [:v | 
		 elements add: (self convertLevelSpecification: v ) ].
	^ elements
]

{ #category : #conversion }
ConfigurationForMicrodown >> convertMainDocument: aValue [
	"generated code"
	^ (FileSystem workingDirectory / aValue)
]

{ #category : #conversion }
ConfigurationForMicrodown >> convertNewLine: aValue [
	"generated code"
	^ (Dictionary
			newFrom:
				{(#cr -> String cr).
				(#lf -> UnixPlatform new lineEnding).
				(#crlf -> Win32Platform new lineEnding).
				(#unix -> UnixPlatform new lineEnding).
				(#mac -> UnixPlatform new lineEnding).
				(#dos -> Win32Platform new lineEnding)}) at: aValue
]

{ #category : #conversion }
ConfigurationForMicrodown >> convertOutputDirectory: aValue [
	"generated code"
	^ Path from: aValue
]

{ #category : #conversion }
ConfigurationForMicrodown >> convertOutputFile: aValue [
	"generated code"
	^ (FileSystem workingDirectory / aValue)
]

{ #category : #conversion }
ConfigurationForMicrodown >> convertRenderStructureAsSlide: aValue [
	"generated code"
	^ aValue 
]

{ #category : #conversion }
ConfigurationForMicrodown >> convertScrambledEmailAddresses: aValue [
	"generated code"
	^ aValue 
]

{ #category : #conversion }
ConfigurationForMicrodown >> convertSeparateOutputFiles: aValue [
	"generated code"
	^ aValue 
]

{ #category : #conversion }
ConfigurationForMicrodown >> convertSeries: aValue [
	"generated code"
	^ aValue
]

{ #category : #conversion }
ConfigurationForMicrodown >> convertSlideInTemplateForDeckJS: aValue [
	"generated code"
	^ aValue
]

{ #category : #conversion }
ConfigurationForMicrodown >> convertTitle: aValue [
	"generated code"
	^ aValue
]

{ #category : #conversion }
ConfigurationForMicrodown >> convertTocFile: aValue [
	"generated code"
	^ Path from: aValue
]

{ #category : #'declared items' }
ConfigurationForMicrodown >> declaredItems [
	"generated code"
	^ #( #bibFile #title #attribution #headingLevelOffset #series #keywords #outputDirectory #baseDirectory #outputFile #mainDocument #inputFile #latexTemplate #scrambledEmailAddresses #separateOutputFiles #renderStructureAsSlide #latexChapterTemplate #htmlTemplate #htmlChapterTemplate #newLine #latexWriter #htmlWriter #slideInTemplateForDeckJS #defaultScriptLanguage #levelSpecification #levels #tocFile )
]

{ #category : #'as yet unclassified' }
ConfigurationForMicrodown >> defaultExport [
	^ self propertyAt: #defaultExport ifAbsent: [ '' ].
]

{ #category : #accessing }
ConfigurationForMicrodown >> defaultScriptLanguage [
	"generated code"
	^ self propertyAt: #defaultScriptLanguage ifAbsent: [(PRRealScriptLanguage for: nil)]
]

{ #category : #accessing }
ConfigurationForMicrodown >> defaultScriptLanguage: aValue [
	"generated code"
	^ self propertyAt: #defaultScriptLanguage put: aValue
]

{ #category : #accessing }
ConfigurationForMicrodown >> headingLevelOffset [
	"generated code"
	^ self propertyAt: #headingLevelOffset ifAbsent: [0]
]

{ #category : #accessing }
ConfigurationForMicrodown >> headingLevelOffset: aValue [
	"generated code"
	^ self propertyAt: #headingLevelOffset put: aValue
]

{ #category : #accessing }
ConfigurationForMicrodown >> htmlChapterTemplate [
	"generated code"
	^ self propertyAt: #htmlChapterTemplate ifAbsent: ['_support/templates/html.mustache']
]

{ #category : #accessing }
ConfigurationForMicrodown >> htmlChapterTemplate: aValue [
	"generated code"
	^ self propertyAt: #htmlChapterTemplate put: aValue
]

{ #category : #accessing }
ConfigurationForMicrodown >> htmlTemplate [
	"generated code"
	^ self propertyAt: #htmlTemplate ifAbsent: ['_support/templates/html.mustache']
]

{ #category : #accessing }
ConfigurationForMicrodown >> htmlTemplate: aValue [
	"generated code"
	^ self propertyAt: #htmlTemplate put: aValue
]

{ #category : #accessing }
ConfigurationForMicrodown >> htmlWriter [
	"generated code"
	^ self propertyAt: #htmlWriter ifAbsent: ['html']
]

{ #category : #accessing }
ConfigurationForMicrodown >> htmlWriter: aValue [
	"generated code"
	^ self propertyAt: #htmlWriter put: aValue
]

{ #category : #accessing }
ConfigurationForMicrodown >> inputFile [
	"generated code"
	^ self propertyAt: #inputFile ifAbsent: [(FileSystem workingDirectory / 'book')]
]

{ #category : #accessing }
ConfigurationForMicrodown >> inputFile: aValue [
	"generated code"
	^ self propertyAt: #inputFile put: aValue
]

{ #category : #accessing }
ConfigurationForMicrodown >> keywords [
	"generated code"
	^ self propertyAt: #keywords ifAbsent: ['Pharo']
]

{ #category : #accessing }
ConfigurationForMicrodown >> keywords: aValue [
	"generated code"
	^ self propertyAt: #keywords put: aValue
]

{ #category : #accessing }
ConfigurationForMicrodown >> latexChapterTemplate [
	"generated code"
	^ self propertyAt: #latexChapterTemplate ifAbsent: ['_support/templates/chapter.latex.mustache']
]

{ #category : #accessing }
ConfigurationForMicrodown >> latexChapterTemplate: aValue [
	"generated code"
	^ self propertyAt: #latexChapterTemplate put: aValue
]

{ #category : #accessing }
ConfigurationForMicrodown >> latexTemplate [
	"generated code"
	^ self propertyAt: #latexTemplate ifAbsent: ['_support/templates/main.latex.mustache']
]

{ #category : #accessing }
ConfigurationForMicrodown >> latexTemplate: aValue [
	"generated code"
	^ self propertyAt: #latexTemplate put: aValue
]

{ #category : #accessing }
ConfigurationForMicrodown >> latexWriter [
	"generated code"
	^ self propertyAt: #latexWriter ifAbsent: ['latex:sbabook']
]

{ #category : #accessing }
ConfigurationForMicrodown >> latexWriter: aValue [
	"generated code"
	^ self propertyAt: #latexWriter put: aValue
]

{ #category : #accessing }
ConfigurationForMicrodown >> levelSpecification [
	"generated code"
	^ self propertyAt: #levelSpecification ifAbsent: [ MicTitlePrinterSpecification new ]
]

{ #category : #accessing }
ConfigurationForMicrodown >> levelSpecification: aValue [
	"generated code"
	^ self propertyAt: #levelSpecification put: aValue
]

{ #category : #accessing }
ConfigurationForMicrodown >> levels [
	"generated code"
	^ self propertyAt: #levels ifAbsent: [ OrderedCollection new ]
]

{ #category : #accessing }
ConfigurationForMicrodown >> levels: aValue [
	"generated code"
	^ self propertyAt: #levels put: aValue
]

{ #category : #accessing }
ConfigurationForMicrodown >> mainDocument [
	"generated code"
	^ self propertyAt: #mainDocument ifAbsent: [(FileSystem workingDirectory / 'book')]
]

{ #category : #accessing }
ConfigurationForMicrodown >> mainDocument: aValue [
	"generated code"
	^ self propertyAt: #mainDocument put: aValue
]

{ #category : #accessing }
ConfigurationForMicrodown >> newLine [
	"generated code"
	self flag: 'see how use the comment'.
	^ self propertyAt: #newLine ifAbsent: [ String cr "Smalltalk os lineEnding"]
]

{ #category : #accessing }
ConfigurationForMicrodown >> newLine: aValue [
	"generated code"
	^ self propertyAt: #newLine put: aValue
]

{ #category : #accessing }
ConfigurationForMicrodown >> outputDirectory [
	"generated code"
	^ self propertyAt: #outputDirectory ifAbsent: [Path from: 'build']
]

{ #category : #accessing }
ConfigurationForMicrodown >> outputDirectory: aValue [
	"generated code"
	^ self propertyAt: #outputDirectory put: aValue
]

{ #category : #accessing }
ConfigurationForMicrodown >> outputFile [
	"generated code"
	^ self propertyAt: #outputFile ifAbsent: [(FileSystem workingDirectory / 'output')]
]

{ #category : #accessing }
ConfigurationForMicrodown >> outputFile: aValue [
	"generated code"
	^ self propertyAt: #outputFile put: aValue
]

{ #category : #accessing }
ConfigurationForMicrodown >> renderStructureAsSlide [
	"generated code"
	^ self propertyAt: #renderStructureAsSlide ifAbsent: [true]
]

{ #category : #accessing }
ConfigurationForMicrodown >> renderStructureAsSlide: aValue [
	"generated code"
	^ self propertyAt: #renderStructureAsSlide put: aValue
]

{ #category : #accessing }
ConfigurationForMicrodown >> scrambledEmailAddresses [
	"generated code"
	^ self propertyAt: #scrambledEmailAddresses ifAbsent: [false]
]

{ #category : #accessing }
ConfigurationForMicrodown >> scrambledEmailAddresses: aValue [
	"generated code"
	^ self propertyAt: #scrambledEmailAddresses put: aValue
]

{ #category : #accessing }
ConfigurationForMicrodown >> separateOutputFiles [
	"generated code"
	^ self propertyAt: #separateOutputFiles ifAbsent: [false]
]

{ #category : #accessing }
ConfigurationForMicrodown >> separateOutputFiles: aValue [
	"generated code"
	^ self propertyAt: #separateOutputFiles put: aValue
]

{ #category : #accessing }
ConfigurationForMicrodown >> series [
	"generated code"
	^ self propertyAt: #series ifAbsent: ['Square Bracket Associate Collection']
]

{ #category : #accessing }
ConfigurationForMicrodown >> series: aValue [
	"generated code"
	^ self propertyAt: #series put: aValue
]

{ #category : #accessing }
ConfigurationForMicrodown >> slideInTemplateForDeckJS [
	"generated code"
	^ self propertyAt: #slideInTemplateForDeckJS ifAbsent: [1]
]

{ #category : #accessing }
ConfigurationForMicrodown >> slideInTemplateForDeckJS: aValue [
	"generated code"
	^ self propertyAt: #slideInTemplateForDeckJS put: aValue
]

{ #category : #accessing }
ConfigurationForMicrodown >> title [
	"generated code"
	^ self propertyAt: #title ifAbsent: ['my super cool book']
]

{ #category : #accessing }
ConfigurationForMicrodown >> title: aValue [
	"generated code"
	^ self propertyAt: #title put: aValue
]

{ #category : #accessing }
ConfigurationForMicrodown >> tocFile [
	"generated code"
	^ self propertyAt: #tocFile ifAbsent: [Path from: '.']
]

{ #category : #accessing }
ConfigurationForMicrodown >> tocFile: aValue [
	"generated code"
	^ self propertyAt: #tocFile put: aValue
]

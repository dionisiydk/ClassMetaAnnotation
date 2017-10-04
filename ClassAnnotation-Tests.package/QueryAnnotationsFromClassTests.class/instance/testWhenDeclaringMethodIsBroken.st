tests
testWhenDeclaringMethodIsBroken

	| annotations ann |
	annotations := ClassWithBrokenAnnotation classAnnotations.	
	self assert: annotations size equals: 1.
	
	ann := annotations anyOne.
	
	self assert: ann class equals: BrokenClassAnnotation.
	self assert: ann annotatedClass equals: ClassWithBrokenAnnotation.
	self assert: ann declarationSelector equals: #brokenAnnotation.
	self assert: (ann errorString endsWith: ClassWithBrokenAnnotation brokenAnnotationMessage).
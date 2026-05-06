actions
postLoad
	
	"we need to initialize the FFICompilerPlugin as we added methods with <ffiCalloutTranslator>"
	FFICompilerPlugin initialize.
	
	LGitExternalStructure allSubclasses
		select: [ :each | each class selectors includes: #fieldsDesc ]
		thenDo: [ :each | each compileFields ]
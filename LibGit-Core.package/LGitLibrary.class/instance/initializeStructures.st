operations
initializeStructures

	| currentCompilationPlatform |
	Smalltalk environment
		at: #LGitBlameHunk put: self blameHunkStructureClass;
		at: #LGitFetchOptions put: self fetchOptionsStructureClass;
		at: #LGitPushOptions put: self pushOptionsStructureClass;
		at: #LGitRemoteCallbacks put: self remoteCallbacksStructureClass.

	"Reset the method registry after changing struct aliases.
	Only do it if we change the platform"	
	currentCompilationPlatform := {
		                              OSPlatform current family.
		                              Smalltalk vm wordSize }.
	LastCompilationPlatform = currentCompilationPlatform ifTrue: [ ^ self ].

	LastCompilationPlatform := currentCompilationPlatform.
	FFIMethodRegistry resetAll
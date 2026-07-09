operations
initializeStructures

	| currentLibgitVersion |
	Smalltalk environment
		at: #LGitBlameHunk put: self blameHunkStructureClass;
		at: #LGitFetchOptions put: self fetchOptionsStructureClass;
		at: #LGitPushOptions put: self pushOptionsStructureClass;
		at: #LGitRemoteCallbacks put: self remoteCallbacksStructureClass.

	"Reset the method registry after changing struct aliases.
	Only do it if we change libgit version"	
	currentLibgitVersion := self version.
	LastLibgitVersion = currentLibgitVersion ifTrue: [ ^ self ].

	LastLibgitVersion := currentLibgitVersion.
	FFIMethodRegistry resetAll
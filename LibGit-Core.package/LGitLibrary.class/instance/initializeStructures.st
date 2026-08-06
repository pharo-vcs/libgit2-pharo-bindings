operations
initializeStructures

	Smalltalk environment
		at: #LGitBlameHunk put: self blameHunkStructureClass;
		at: #LGitFetchOptions put: self fetchOptionsStructureClass;
		at: #LGitPushOptions put: self pushOptionsStructureClass;
		at: #LGitRemoteCallbacks put: self remoteCallbacksStructureClass
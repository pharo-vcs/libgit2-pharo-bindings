operations
initializeStructures

	Smalltalk environment
		at: #LGitBlameHunk put: self blameHunkStructureClass;
		at: #LGitFetchOptions put: self fetchOptionsStructureClass;
		at: #LGitPushOptions put: self pushOptionsStructureClass;
		at: #LGitRemoteCallbacks put: self remoteCallbacksStructureClass.

	"The four aliases above are version-adaptive, but a structure that embeds one
	by value (LGitCloneOptions embeds LGitFetchOptions) caches its own byteSize
	and is not rebuilt when the alias changes. On libgit2 >= 1.9 git_remote_callbacks
	grew a field, so sizeof(git_clone_options) is 416, yet the cached layout stays
	408 and git_clone_init_options memcpy'd 416 bytes into a 408-byte buffer,
	corrupting the heap. Rebuild every LibGit structure so composites track the
	current adaptive members."
	LGitExternalStructure allSubclasses do: [ :each | each rebuildFieldAccessors ]

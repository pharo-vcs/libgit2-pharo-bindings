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
	FFIMethodRegistry resetAll.

	"resetAll rebinds FFI call sites, but a structure that embeds a
	version-adaptive struct by value caches its own byteSize/layout and is not
	rebuilt. LGitCloneOptions embeds LGitFetchOptions: on libgit2 >= 1.9
	git_remote_callbacks grew a field, so sizeof(git_clone_options) is 416, yet
	the cached layout stayed 408 and git_clone_init_options memcpy'd 416 bytes
	into a 408-byte buffer, corrupting the heap. Rebuild every LibGit structure
	so composites track the current adaptive members (idempotent; only runs when
	the libgit2 version actually changed)."
	LGitExternalStructure allSubclasses do: [ :each | each rebuildFieldAccessors ]

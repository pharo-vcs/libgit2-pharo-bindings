tests
testPush

	| remoteRepository repo directory head blob author builder treeId rootBuilder tree remote |
	remoteRepository := self newLocalBareRemote.
	repo := LGitRepository on: self localCloneReference.
	repository := repo.
	repo cloneLocal: (self localUrlOf: remoteRepository).
	directory := (repo workingDirectory / 'libgit_tests') ensureCreateDirectory.
	directory / 'foo' writeStreamDo: [ :stream | stream nextPutAll: 'eat my shorts' ].
	head := repo head resolve object.
	blob := LGitBlob of: repo fromFile: directory / 'foo'.
	builder := LGitTreeBuilder of: repo.
	builder createNew.
	builder addEntry: blob filename: 'foo'.
	treeId := builder write.
	rootBuilder := LGitTreeBuilder of: repo.
	rootBuilder createNew.
	rootBuilder addEntryWithId: treeId filename: 'libgit_tests' filemode: LGitFilemodeEnum git_filemode_tree.
	tree := rootBuilder newTree.
	author := LGitSignature name: 'Bart Simpson' email: 'bartman@gotham.com'.
	(LGitCommitBuilder of: repo)
		tree: tree;
		message: 'push test';
		parents: { head };
		updateReference: 'refs/heads/master';
		author: author;
		committer: author;
		writeCommit.
	remote := (LGitRemote of: repo named: 'origin') lookup.
	self
		shouldnt: [ remote pushWithRefSpec: (LGitRefSpec fromString: 'refs/heads/master:refs/heads/libgit') pushOptions: repo ffiLibrary uniqueInstance pushOptionsStructureClass defaults ]
		raise: LGitAbstractError
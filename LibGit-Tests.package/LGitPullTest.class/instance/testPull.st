tests
testPull

	| remoteRepository repo remote packDirectory options |
	remoteRepository := self newRepo state4WithCommit.
	repo := LGitRepository on: self localCloneReference.
	repo cloneLocal: (self localUrlOf: remoteRepository).
	remote := (LGitRemote of: repo named: 'origin') lookup.

	options := repo ffiLibrary uniqueInstance fetchOptionsStructureClass defaults.
	self shouldnt: [ remote pullWithFetchOptions: options ] raise: LGitAbstractError.
	packDirectory := repo workingDirectory / '.git/objects/pack'.
	self assert: packDirectory exists.
	self deny: packDirectory children isEmpty.
	self assert: packDirectory children size equals: 2.
	self assert: (packDirectory children anySatisfy: [ :child | child basename endsWith: '.pack' ]).
	self assert: (packDirectory children anySatisfy: [ :child | child basename endsWith: '.idx' ]).
	self assert: (repo workingDirectory / '.git/FETCH_HEAD') exists
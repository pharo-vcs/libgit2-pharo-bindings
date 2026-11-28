tests
testPull

	| remoteRepository repo remote packDirectory options |
	"Clones left open keep their pack files locked on Windows, so this test is skipped on Pharo CI for now."
	OSPlatform current isWindows ifTrue: [ self skipOnPharoCITestingEnvironment ].
	remoteRepository := self newRepo state4WithCommit.
	repo := LGitRepository on: self localCloneReference.
	repository := repo.
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
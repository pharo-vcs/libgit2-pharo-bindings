tests
testCloneFetch

	| remoteRepository repo remote message |
	"Clones left open keep their pack files locked on Windows, so this test is skipped on Pharo CI for now."
	OSPlatform current isWindows ifTrue: [ self skipOnPharoCITestingEnvironment ].
	remoteRepository := self newRepo state4WithCommit.
	repo := LGitRepository on: self localCloneReference.
	repository := repo.
	repo cloneLocal: (self localUrlOf: remoteRepository).
	(repo repositoryReference / '.git/FETCH_HEAD') ensureDelete.
	self deny: (repo repositoryReference / '.git/FETCH_HEAD') exists.
	remote := (LGitRemote of: repo named: 'origin') lookup.

	message := 'Bart ate my shorts!'.
	self shouldnt: [ remote fetchWithMessage: message ] raise: LGitAbstractError.
	self assert: (repo repositoryReference / '.git/FETCH_HEAD') exists
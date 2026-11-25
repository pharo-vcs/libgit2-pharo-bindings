tests
testRepoOpeningBeforeInitialization

	| repo |
	repo := self newRepo state1ExistingReference.
	self deny: repo isInitialized.

	self should: [ repo open ] raise: LGitRepositoryNotFound
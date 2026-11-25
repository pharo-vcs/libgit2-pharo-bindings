tests
testCloneLocal

	| remoteRepository repo cloneReference |
	remoteRepository := self newRepo state4WithCommit.
	cloneReference := FileSystem disk workingDirectory / '_test_repo_clone'.
	[
		repo := LGitRepository on: cloneReference.
		self deny: repo exists.
		self deny: repo isProperRepository.

		repo cloneLocal: 'file://' , remoteRepository repositoryReference fullName.
		self assert: repo exists.
		self assert: (repo repositoryReference / '.git') exists.
		self assert: (repo repositoryReference / '.git/HEAD') exists.
		self assert: repo isProperRepository.
		self shouldnt: [ repo open ] raise: LGitAbstractError ] ensure: [ cloneReference ensureDeleteAll ]
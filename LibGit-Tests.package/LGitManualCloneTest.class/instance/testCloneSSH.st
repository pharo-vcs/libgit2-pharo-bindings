tests
testCloneSSH
	<todo: 'use a local repository once libgit2 supports cloning from fs'>

	| repo |
	repo := self newRepo state0MissingReference.
	self deny: repo exists.
	self deny: repo isProperRepository.
	
	repo cloneSsh: self newRepo repositoryUrlSsh.
	self assert: repo exists.
	self assert: (repo repositoryReference / '.git') exists.
	self assert: (repo repositoryReference / '.git/HEAD') exists.
	self assert: repo isProperRepository.
	self shouldnt: [ repo open ] raise: LGitAbstractError

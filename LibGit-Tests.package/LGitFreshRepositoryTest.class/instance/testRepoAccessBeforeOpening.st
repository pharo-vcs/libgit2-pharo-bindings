tests
testRepoAccessBeforeOpening

	| repo |
	repo := self newRepo state2Initialized.
	self deny: repo isOpen.

	self should: [ repo head ] raise: LGit_GIT_EUNBORNBRANCH
tests
testTreeIsRegisteredForRelease

	| repo commit tree |
	repo := self newRepo state4WithCommit.
	commit := repo head resolve object.

	tree := commit tree.
	self assert: (self isRegisteredForRelease: tree)
tests
testBranchNamesNotEmpty
	| repo branchNames |
	repo := self newRepo state4WithCommit.
	branchNames := repo branchNames.
	self assert: branchNames isNotEmpty.
	self assert: branchNames size equals: 1.
	self assert: branchNames first equals: 'refs/heads/master'
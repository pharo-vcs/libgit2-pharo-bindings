tests
testBranchesNotEmpty
	| repo branches |
	repo := self newRepo state4WithCommit.
	branches := repo branches.
	self assert: branches isNotEmpty.
	self assert: branches size equals: 1.
	self assert: branches first name equals: 'refs/heads/master'
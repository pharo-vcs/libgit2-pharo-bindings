tests
testClean
	| repo |
	repo := LGitTestRepository tearDown; state4WithCommit. 
	self assert: repo head object class = LGitCommit.
	self assert: (repo lookup: 'HEAD') object class = LGitCommit.
	self assert: repo head object = (repo lookup: 'HEAD') object
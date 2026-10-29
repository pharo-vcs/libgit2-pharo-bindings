tests
testDefaultBranchName

	| repo remote |
	repo := self newRepo state3Opened.
	remote := LGitRemote of: repo named: 'origin' url: self newRepo repositoryUrlHttps.
	remote
		create;
		lookup;
		connectFetch.

	self
		assert: remote defaultBranchName
		equals: 'refs/heads/master'
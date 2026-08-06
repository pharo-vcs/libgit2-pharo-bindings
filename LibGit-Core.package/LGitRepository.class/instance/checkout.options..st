operations
checkout: aString options: options
	<todo: 'use proper exceptions'>
	self assert: aString isNotNil.
	self assert: aString trimBoth isNotEmpty.
	[ 
		| branch |
		branch := self 
			lookupLocalBranch: aString 
			ifAbsent: [ self createBranchFromOrigin: aString ].
		self setHead: branch.
		self resetHardTo: branch object checkoutOptions: options
	] 
	on: LGit_GIT_EINVALIDSPEC, LGit_GIT_ENOTFOUND do: [
		"aString is not a valid branch name, so try to find a corresponding treeish using revparse, 
		this will handle stuff like 'master~1'"
		| commitish | 
		commitish := self revparse: aString.
		self setHeadDetached: commitish.
		self resetHardTo: commitish object checkoutOptions: options.
	].
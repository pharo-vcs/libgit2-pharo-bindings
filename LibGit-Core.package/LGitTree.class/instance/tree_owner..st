libgit - calls
tree_owner: tree
	
	^ self ffiCall: #(LGitRepository git_tree_owner #(self)) options: #()
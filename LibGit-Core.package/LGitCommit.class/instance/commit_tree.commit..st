libgit - calls
commit_tree: tree_out commit: commit
	
	^ self
		ffiCall: #(LGitReturnCodeEnum git_commit_tree #(LGitTree *tree_out , self))
		options: #()
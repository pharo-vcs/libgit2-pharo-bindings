libgit - calls
git_branch_delete: gitReference
	^ self
		ffiCall:
			#(LGitReturnCodeEnum git_branch_delete #(LGitReference gitReference))
		options: #()
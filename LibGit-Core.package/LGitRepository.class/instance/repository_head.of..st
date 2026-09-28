libgit - calls
repository_head: reference of: repository
	
	^ self
		ffiCall:
			#(LGitReturnCodeEnum git_repository_head #(LGitReference * reference , self))
		options: #()
libgit - calls
repository_odb: out repo: repo
	
	^ self
		ffiCall: #(LGitReturnCodeEnum git_repository_odb #(LGitOdb * out , self))
		options: #()
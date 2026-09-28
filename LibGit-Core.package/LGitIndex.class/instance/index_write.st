libgit - calls
index_write

	^ self
		ffiCall: #(LGitReturnCodeEnum git_index_write #(self))
		options: #()
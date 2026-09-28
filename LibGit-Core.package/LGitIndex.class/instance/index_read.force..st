libgit - calls
index_read: index force: force
	
	^ self
		ffiCall: #(LGitReturnCodeEnum git_index_read #(self , Boolean force))
		options: #()
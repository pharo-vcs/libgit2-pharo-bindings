libgit - calls
remote_add_push: repo remote: remote refspec: refspec
	
	^ self
		ffiCall:
			#(LGitReturnCodeEnum git_remote_add_push #(LGitRepository repo , String remote , String refspec))
		options: #()
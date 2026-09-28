libgit - calls
remote_add_fetch: repo remote: remote refspec: refspec
	
	^ self
		ffiCall:
			#(LGitReturnCodeEnum git_remote_add_fetch #(LGitRepository repo , String remote String refspec))
		options: #()
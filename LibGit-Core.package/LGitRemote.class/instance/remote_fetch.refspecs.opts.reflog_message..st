libgit - calls
remote_fetch: remote refspecs: refspecs opts: opts reflog_message: reflog_message
	
	^ self
		ffiCall:
			#(LGitReturnCodeEnum git_remote_fetch #(
				self, 
				LGitStringArray* refspecs, 
				LGitFetchOptions* opts, 
				String reflog_message))
		options: #(optCoerceNilToNull)
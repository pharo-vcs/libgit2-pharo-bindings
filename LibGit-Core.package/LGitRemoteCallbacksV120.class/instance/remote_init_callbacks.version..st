libgit - calls
remote_init_callbacks: opts version: version

	                                                               ^ self
		                                                                 ffiCall:
			                                                                 #( #LGitReturnCodeEnum
			                                                                    #git_remote_init_callbacks
			                                                                    #( #LGitRemoteCallbacksV120
			                                                                       #*
			                                                                       #opts
			                                                                       #,
			                                                                       #LGitStructVersionsEnum
			                                                                       #version ) )
		
		                                                                 options:
		                                                                 #(  )
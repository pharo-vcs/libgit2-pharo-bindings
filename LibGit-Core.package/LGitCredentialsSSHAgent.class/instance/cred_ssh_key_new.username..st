libgit - calls
cred_ssh_key_new: out username: aName

	                                                               ^ self
		                                                                 ffiCall:
			                                                                 #( #int
			                                                                    #git_cred_ssh_key_from_agent
			                                                                    #( #LGitCredentials
			                                                                       #*
			                                                                       #out
			                                                                       #,
			                                                                       #String
			                                                                       #aName ) )
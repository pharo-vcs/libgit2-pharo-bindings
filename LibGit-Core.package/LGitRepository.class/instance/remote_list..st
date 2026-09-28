libgit - calls
remote_list: out

	                                                               ^ self
		                                                                 ffiCall:
		                                                                 #( #int
		                                                                    #git_remote_list
		                                                                    #( #LGitStringArray
		                                                                       #*
		                                                                       #out
		                                                                       #,
		                                                                       #self ) )
		                                                                 options:
		                                                                 #(  )
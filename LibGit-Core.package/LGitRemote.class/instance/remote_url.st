libgit - calls
remote_url

	                                                               ^ self
		                                                                 ffiCall:
		                                                                 #( #String
		                                                                    #git_remote_url
		                                                                    #( #self ) )
		                                                                 options:
		                                                                 #(  )
libgit - calls
repository_is_unborn: repo

	                                                               ^ self
		                                                                 ffiCall:
		                                                                 #( #Boolean
		                                                                    #git_repository_head_unborn
		                                                                    #( #self ) )
		                                                                 options:
		                                                                 #(  )
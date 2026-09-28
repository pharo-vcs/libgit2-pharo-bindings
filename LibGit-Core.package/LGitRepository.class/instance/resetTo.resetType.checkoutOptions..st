libgit - calls
resetTo: target resetType: aResetType checkoutOptions: checkout_opts

	                                                               ^ self
		                                                                 ffiCall:
			                                                                 #( #LGitReturnCodeEnum
			                                                                    #git_reset
			                                                                    #( #self
			                                                                       #,
			                                                                       #LGitObject
			                                                                       #target
			                                                                       #,
			                                                                       #LGitResetTypeEnum
			                                                                       #aResetType
			                                                                       #,
			                                                                       #LGitCheckoutOptions
			                                                                       #*
			                                                                       #checkout_opts ) )
		
		                                                                 options:
		                                                                 #(  )
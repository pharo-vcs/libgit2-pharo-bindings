libgit - calls
signature_default: out repo: repo
	
	^ self
		ffiCall:
			#(LGitReturnCodeEnum git_signature_default #(void **out , self))
		options: #()
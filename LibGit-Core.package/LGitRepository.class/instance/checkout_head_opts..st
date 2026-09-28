libgit - calls
checkout_head_opts: opts
	^ self
		ffiCall:
			#(LGitReturnCodeEnum git_checkout_head #(self , LGitCheckoutOptions * opts))
		options: #()
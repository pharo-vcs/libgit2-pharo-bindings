libgit - calls
signature_free: handle 
	^ self
		ffiCall: #(void git_signature_free(void *handle))
		options: #(  )
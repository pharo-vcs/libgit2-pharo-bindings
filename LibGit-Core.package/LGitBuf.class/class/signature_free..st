libgit - calls
signature_free: handle 
	^ self
		ffiCall: #(void git_buf_free(void *handle))
		options: #(  )
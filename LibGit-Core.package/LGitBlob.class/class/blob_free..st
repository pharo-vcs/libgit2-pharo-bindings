libgit - calls
blob_free: handle
	
	^ self
		ffiCall: 	#(void git_blob_free(void *handle))
		options: #()
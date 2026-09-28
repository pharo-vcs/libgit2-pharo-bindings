libgit - calls
reference_free: handle
	^ self
		ffiCall: #(void git_reference_free #(void *handle))
		options: #()
libgit - calls
packbuilder_free: handle
	
	^ self
		ffiCall: #(void git_packbuilder_free #(void *handle))
		options: #()
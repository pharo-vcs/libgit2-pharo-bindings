libgit - calls
status_list_free: handle
	
	^ self
		ffiCall: #(void git_status_list_free #(void *handle))
		options: #()
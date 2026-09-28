libgit - calls
index_free: handle
	
	^ self ffiCall: #(void git_index_free #(void *handle)) options: #()
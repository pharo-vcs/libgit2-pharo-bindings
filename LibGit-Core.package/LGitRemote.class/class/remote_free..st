libgit - calls
remote_free: handle
	
	^ self ffiCall: #(void git_remote_free #(void *handle)) options: #()
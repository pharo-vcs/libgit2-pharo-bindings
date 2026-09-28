libgit - calls
repository_free: handle
	
	^ self ffiCall: #(void git_repository_free #(void *handle)) options: #()
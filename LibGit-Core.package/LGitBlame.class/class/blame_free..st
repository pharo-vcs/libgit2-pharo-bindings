libgit - calls
blame_free: handle
	^ self ffiCall: #(void git_blame_free #(void *handle)) options: #()
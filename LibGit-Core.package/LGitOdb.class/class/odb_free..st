libgit - calls
odb_free: handle
	
	^ self ffiCall: #(void git_odb_free #(void *handle)) options: #()
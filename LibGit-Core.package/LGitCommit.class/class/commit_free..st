libgit - calls
commit_free: handle
	
	^ self ffiCall: #(void git_commit_free #(void *handle)) options: #()
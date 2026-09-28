libgit - calls
revwalk_free: handle
	
	^ self ffiCall: #(void git_revwalk_free #(void *handle)) options: #()
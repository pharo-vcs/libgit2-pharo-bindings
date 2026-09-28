libgit - calls
diff_free: handle
	
	^ self ffiCall: #(void git_diff_free #(void *handle)) options: #()
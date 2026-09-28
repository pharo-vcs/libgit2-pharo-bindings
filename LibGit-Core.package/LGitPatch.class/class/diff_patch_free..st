libgit - calls
diff_patch_free: handle
	
	^ self ffiCall: #(void git_patch_free #(void *handle)) options: #()
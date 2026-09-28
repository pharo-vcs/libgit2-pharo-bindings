libgit - calls
tree_free: handle
	
	^ self ffiCall: #(void git_tree_free #(void *handle)) options: #()
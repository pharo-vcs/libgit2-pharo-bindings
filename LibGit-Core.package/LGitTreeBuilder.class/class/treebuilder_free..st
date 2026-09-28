libgit - calls
treebuilder_free: handle
	
	^ self
		ffiCall: #(void git_treebuilder_free #(void *handle))
		options: #()
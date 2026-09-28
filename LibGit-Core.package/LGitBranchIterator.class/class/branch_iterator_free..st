libgit - calls
branch_iterator_free: handle
	
	^ self
		ffiCall: #(void git_branch_iterator_free #(void *handle))
		options: #()
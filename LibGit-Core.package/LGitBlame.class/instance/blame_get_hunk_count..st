libgit - calls
blame_get_hunk_count: blame
	
	^ self
		ffiCall: #(uint32 git_blame_get_hunk_count #(self))
		options: #()
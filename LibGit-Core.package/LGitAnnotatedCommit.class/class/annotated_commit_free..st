libgit - calls
annotated_commit_free: handle
	^ self
		ffiCall: #(void git_annotated_commit_free #(void *handle))
		options: #()
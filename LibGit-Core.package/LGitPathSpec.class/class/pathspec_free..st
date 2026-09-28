libgit - calls
pathspec_free: handle
	^ self ffiCall: #(void git_pathspec_free (void *handle)) options: #()
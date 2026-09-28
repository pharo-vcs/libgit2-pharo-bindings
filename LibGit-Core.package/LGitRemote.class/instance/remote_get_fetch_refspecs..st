libgit - calls
remote_get_fetch_refspecs: array
	^ self ffiCall: #(int git_remote_get_fetch_refspecs(LGitStringArray *array, self))
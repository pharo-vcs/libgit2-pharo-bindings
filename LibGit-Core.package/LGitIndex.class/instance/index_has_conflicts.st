libgit - calls
index_has_conflicts 
	^ self ffiCall: #(LGitReturnCodeEnum git_index_has_conflicts #(self)) options: #()
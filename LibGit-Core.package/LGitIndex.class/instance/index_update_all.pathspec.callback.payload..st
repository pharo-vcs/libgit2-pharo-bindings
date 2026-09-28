libgit - calls
index_update_all: index pathspec: pathspec callback: callback payload: payload
	
	^ self
		ffiCall:
			#(LGitReturnCodeEnum git_index_update_all #(self, LGitStringArray *pathspec, LGitIndexMatchedPathCallback callback, void *payload))
		options: #(optMayGC optCoerceNilToNull)
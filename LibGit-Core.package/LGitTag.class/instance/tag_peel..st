libgit - calls
tag_peel: result
	^ self
		ffiCall: #(#LGitReturnCodeEnum git_tag_peel(LGitObject *result, self))
		options: #()
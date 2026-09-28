libgit - calls
revwalk_push_range: range
	^ self
		ffiCall: #(LGitReturnCodeEnum git_revwalk_push_range #(self , String range))
		options: #()
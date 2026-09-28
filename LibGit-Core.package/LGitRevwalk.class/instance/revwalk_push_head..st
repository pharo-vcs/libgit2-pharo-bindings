libgit - calls
revwalk_push_head: walk
	
	^ self
		ffiCall: #(LGitReturnCodeEnum git_revwalk_push_head #(self))
		options: #()
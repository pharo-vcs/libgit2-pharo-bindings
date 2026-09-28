libgit - calls
revwalk_next: out walk: walk
	
	^ self
		ffiCall: #(LGitReturnCodeEnum git_revwalk_next #(LGitId * out , self))
		options: #()
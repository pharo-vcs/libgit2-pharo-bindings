libgit - calls
revwalk_push_ref: walk refname: refname
	
	^ self
		ffiCall:
			#(LGitReturnCodeEnum git_revwalk_push_ref #(self , String refname))
		options: #()
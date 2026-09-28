libgit - calls
revwalk_hide_ref: walk refname: refname
	
	^ self
		ffiCall:
			#(LGitReturnCodeEnum git_revwalk_hide_ref #(self , String refname))
		options: #()
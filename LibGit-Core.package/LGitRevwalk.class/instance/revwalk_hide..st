libgit - calls
revwalk_hide: commitId
	^ self 
		ffiCall:
			#(LGitReturnCodeEnum git_revwalk_hide #(self , LGitId * commitId))
		options: #()
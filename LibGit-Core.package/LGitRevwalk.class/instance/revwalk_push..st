libgit - calls
revwalk_push: commitId
	^ self 
		ffiCall:
			#(LGitReturnCodeEnum git_revwalk_push #(self , LGitId * commitId))
		options: #()
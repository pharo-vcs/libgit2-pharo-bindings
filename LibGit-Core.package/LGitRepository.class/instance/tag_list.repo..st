libgit - calls
tag_list: tag_names repo: repo
	
	^ self
		ffiCall:
			#(LGitReturnCodeEnum git_tag_list #(LGitStringArray * tag_names , LGitRepository repo))
		options: #()
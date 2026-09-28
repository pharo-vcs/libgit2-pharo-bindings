libgit - calls
repository_config: config
	^ self
		ffiCall:
			#(LGitReturnCodeEnum git_repository_config(LGitConfig *config, self))
		options: #()
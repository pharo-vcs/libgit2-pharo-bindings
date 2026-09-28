libgit - calls
config_delete_entry: name

	^ self ffiCall:
			#(LGitReturnCodeEnum git_config_delete_entry(
				self, 
				String name))
		options: #()
libgit - calls
config_set_bool: name to: value

	^ self ffiCall:
			#(LGitReturnCodeEnum git_config_set_bool(
				self, 
				String name, 
				Boolean value))
		options: #()
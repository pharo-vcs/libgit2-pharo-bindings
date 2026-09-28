libgit - calls
config_set_string: name to: value

	^ self ffiCall:
			#(LGitReturnCodeEnum git_config_set_string(
				self, 
				String name, 
				String value))
		options: #()
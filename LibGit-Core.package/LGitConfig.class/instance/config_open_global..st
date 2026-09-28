libgit - calls
config_open_global: out

	^ self ffiCall: #(int git_config_open_global("LGitConfig **"void **out, self))
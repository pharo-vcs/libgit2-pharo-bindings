libgit - calls
credentials: credentials
	^ self
		ffiCall: #(void #(LGitCredentials * credentials))
		options: #(optMayGC)
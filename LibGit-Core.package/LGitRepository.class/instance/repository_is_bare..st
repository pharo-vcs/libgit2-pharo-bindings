libgit - calls
repository_is_bare: repo
	
	^ self ffiCall: #(Boolean git_repository_is_bare #(self)) options: #()
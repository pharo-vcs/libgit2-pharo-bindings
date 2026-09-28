libgit - calls
repository_is_empty: repo
	
	^ self ffiCall: #(Boolean git_repository_is_empty #(self)) options: #()
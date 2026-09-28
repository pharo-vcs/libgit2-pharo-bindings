libgit - calls
repository_workdir: repo
	
	^ self ffiCall: #(String git_repository_workdir #(self)) options: #()
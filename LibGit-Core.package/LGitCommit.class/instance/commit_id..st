libgit - calls
commit_id: commit
	
	^ self ffiCall: #(void * git_commit_id #(self)) options: #()
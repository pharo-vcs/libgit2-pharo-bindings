libgit - calls
revwalk_reset: revwalk
	
	^ self ffiCall: #(void git_revwalk_reset #(self)) options: #()
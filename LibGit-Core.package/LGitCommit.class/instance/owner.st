accessing
owner

	^ self 
		ffiCall: #(void *git_commit_owner(self)) 
		options: #()
libgit - calls
branch_is_head: branch
	
	^ self ffiCall: #(int git_branch_is_head #(self)) options: #()
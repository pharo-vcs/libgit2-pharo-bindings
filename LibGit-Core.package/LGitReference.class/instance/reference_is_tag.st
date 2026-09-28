libgit - calls
reference_is_tag	
	^ self ffiCall: #(int git_reference_is_tag #(self)) options: #()
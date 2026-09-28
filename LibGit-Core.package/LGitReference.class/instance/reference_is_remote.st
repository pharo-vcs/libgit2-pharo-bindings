libgit - calls
reference_is_remote
	^ self ffiCall: #(Boolean git_reference_is_remote #(self)) options: #()
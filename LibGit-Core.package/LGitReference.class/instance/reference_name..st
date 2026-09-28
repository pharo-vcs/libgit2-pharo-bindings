libgit - calls
reference_name: ref
	
	^ self ffiCall: #(String git_reference_name #(self)) options: #()
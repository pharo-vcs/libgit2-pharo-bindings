accessing
owner
	^ self ffiCall: #(void * git_reference_owner #(self)) options: #()
libgit - calls
blob_id: blob
	
	^ self ffiCall: #(void * git_blob_id #(self)) options: #()
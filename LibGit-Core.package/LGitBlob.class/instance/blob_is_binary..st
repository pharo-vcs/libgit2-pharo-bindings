libgit - calls
blob_is_binary: blob
	
	^ self ffiCall: #(Boolean git_blob_is_binary #(self)) options: #()
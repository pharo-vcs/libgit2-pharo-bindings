libgit - calls
blob_rawsize: blob
	
	^ self ffiCall: #(int64 git_blob_rawsize #(self)) options: #()
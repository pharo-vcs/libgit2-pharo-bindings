libgit - calls
blob_rawcontent: blob
	
	^ self ffiCall: #(void * git_blob_rawcontent #(self)) options: #()
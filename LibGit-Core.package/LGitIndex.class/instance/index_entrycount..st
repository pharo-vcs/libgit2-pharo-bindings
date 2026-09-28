libgit - calls
index_entrycount: index
	
	^ self ffiCall: #(size_t git_index_entrycount #(self)) options: #()
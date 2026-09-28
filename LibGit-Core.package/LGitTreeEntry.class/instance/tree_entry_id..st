libgit - calls
tree_entry_id: entry
	
	^ self ffiCall: #(void * git_tree_entry_id #(self)) options: #()
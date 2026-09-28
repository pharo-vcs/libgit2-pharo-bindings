libgit - calls
tree_id: tree
	
	^ self ffiCall: #(void * git_tree_id #(self)) options: #()
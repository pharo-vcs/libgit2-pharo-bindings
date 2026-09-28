libgit - calls
tree_entrycount: tree
	
	^ self ffiCall: #(int git_tree_entrycount #(self)) options: #()
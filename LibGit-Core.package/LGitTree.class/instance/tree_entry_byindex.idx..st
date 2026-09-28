libgit - calls
tree_entry_byindex: tree idx: idx
	
	^ self
		ffiCall: #(LGitTreeEntry git_tree_entry_byindex #(self , size_t idx))
		options: #()
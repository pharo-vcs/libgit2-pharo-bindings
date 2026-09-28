libgit - calls
tree_entry_type: entry
	
	^ self
		ffiCall: #(LGitObjectTypeEnum git_tree_entry_type #(self))
		options: #()
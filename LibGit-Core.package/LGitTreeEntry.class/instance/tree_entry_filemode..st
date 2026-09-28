libgit - calls
tree_entry_filemode: entry
	
	^ self
		ffiCall: #(LGitFilemodeEnum git_tree_entry_filemode #(self))
		options: #()
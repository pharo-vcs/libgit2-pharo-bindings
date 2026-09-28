libgit - calls
treebuilder_get: bld filename: filename
	
	^ self
		ffiCall: #(LGitTreeEntry git_treebuilder_get #(self , String filename))
		options: #()
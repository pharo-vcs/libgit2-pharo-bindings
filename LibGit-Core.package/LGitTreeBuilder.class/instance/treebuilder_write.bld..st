libgit - calls
treebuilder_write: id bld: bld
	
	^ self
		ffiCall: #(LGitReturnCodeEnum git_treebuilder_write #(LGitId * id , self))
		options: #()
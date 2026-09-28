libgit - calls
treebuilder_clear: bld
	
	^ self ffiCall: #(void git_treebuilder_clear #(self)) options: #()
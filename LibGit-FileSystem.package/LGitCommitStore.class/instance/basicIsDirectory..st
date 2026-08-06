abstract
basicIsDirectory: aNode
	
	^ aNode type = LGitObjectTypeEnum git_obj_tree

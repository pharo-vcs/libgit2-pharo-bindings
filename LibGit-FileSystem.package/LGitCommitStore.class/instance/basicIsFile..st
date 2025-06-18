abstract
basicIsFile: aLGitTreeEntry 
	
	^ aLGitTreeEntry type = LGitObjectTypeEnum git_obj_blob

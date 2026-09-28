libgit - calls
packbuilder_insert_commit: pb id: id
	
	^ self
		ffiCall:
			#(LGitReturnCodeEnum git_packbuilder_insert_commit #(self , LGitId * id))
		options: #(optMayGC)
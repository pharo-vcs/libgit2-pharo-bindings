libgit - calls
diff_num_deltas_of_type: diff type: type
	
	^ self
		ffiCall: #(size_t git_diff_num_deltas_of_type #(self , LGitDeltaTypeEnum type))
		options: #()
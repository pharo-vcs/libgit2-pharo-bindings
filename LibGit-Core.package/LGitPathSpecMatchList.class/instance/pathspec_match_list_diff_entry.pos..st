libgit - calls
pathspec_match_list_diff_entry: m pos: pos
	
	^ self
		ffiCall:
			#(LGitDiffDelta git_pathspec_match_list_diff_entry #(LGitPathSpecMatchList m , size_t pos))
		options: #()
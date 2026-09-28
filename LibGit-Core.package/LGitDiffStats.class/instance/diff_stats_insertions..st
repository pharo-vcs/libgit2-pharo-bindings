libgit - calls
diff_stats_insertions: stats
	
	^ self
		ffiCall: #(size_t git_diff_stats_insertions #(self))
		options: #()
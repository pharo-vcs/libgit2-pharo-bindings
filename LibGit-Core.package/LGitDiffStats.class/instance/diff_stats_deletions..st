libgit - calls
diff_stats_deletions: stats
	
	^ self
		ffiCall: #(size_t git_diff_stats_deletions #(self))
		options: #()
libgit - calls
diff_stats_files_changed: stats
	
	^ self
		ffiCall: #(size_t git_diff_stats_files_changed #(self))
		options: #()
libgit - calls
diff_get_stats: out diff: diff
	
	^ self
		ffiCall: #(LGitReturnCodeEnum git_diff_get_stats #(LGitDiffStats * out , self))
		options: #()
libgit - calls
diff_stats_to_buf: out stats: stats format: format width: width
	
	^ self
		ffiCallSafely:
			#(LGitReturnCodeEnum git_diff_stats_to_buf #(LGitBuffer out , self , LGitDiffStatsFormatTypeEnum format , size_t width))
		options: #()
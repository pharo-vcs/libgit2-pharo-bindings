libgit - calls
diff_stats_to_buf: out stats: stats format: format width: width
	
	^ self
		ffiCall:
			#(LGitReturnCodeEnum git_diff_stats_to_buf #(LGitBuf * out , self , LGitDiffStatsFormatTypeEnum format , size_t width))
		options: #()

libgit - calls
diff_get_delta: diff idx: idx
	<todo: 'use LGitDiffDelta* as return type'>
	
	^ self
		ffiCall: #(void *git_diff_get_delta #(self , size_t idx))
		options: #()
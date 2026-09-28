libgit - calls
patch_get_delta: patch
	
	^ self
		ffiCall: #(LGitDiffDelta * git_patch_get_delta #(self))
		options: #()
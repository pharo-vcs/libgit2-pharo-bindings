libgit - calls
giterr_clear
	^ self ffiCall: #(void giterr_clear()) options: #(  )
libgit - calls
giterr_set_str: string
	"GIT_EUSER = -7"
	^ self ffiCallSafely: #(void giterr_set_str(int -7, String string))
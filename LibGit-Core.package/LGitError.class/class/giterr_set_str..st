libgit - calls
giterr_set_str: string
	"GIT_EUSER = -7"
	^ self ffiCall: #(void giterr_set_str(int -7, String string))
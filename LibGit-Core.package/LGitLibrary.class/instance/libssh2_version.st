libgit - calls
libssh2_version
	"Return the version of the libgit2 library being currently used."
	^self ffiCall: #(String  libssh2_version(int64 0))
libgit - calls
writepack: writepack
	^ self ffiCall: #(void #(LGitOdbWritepack *writepack)) options: #()
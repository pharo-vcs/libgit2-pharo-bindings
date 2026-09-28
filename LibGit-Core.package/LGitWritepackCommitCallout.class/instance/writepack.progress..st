libgit - calls
writepack: writepack progress: progress
	^ self
		ffiCall: #(int #(LGitOdbWritepack *writepack , LGitTransferProgress *progress))
		options: #(optMayGC)
libgit - calls
commit_raw_header: aCommit

	^ self ffiCall: #(const char * git_commit_raw_header(self))
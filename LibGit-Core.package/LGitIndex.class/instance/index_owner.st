libgit - calls
index_owner

	^ self ffiCall: #(LGitRepository * git_index_owner (LGitIndex self)) options: #()
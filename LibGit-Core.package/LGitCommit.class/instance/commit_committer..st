libgit - calls
commit_committer: commit
	
	^ self
		ffiCall: #(LGitSignature * git_commit_committer #(self))
		options: #()
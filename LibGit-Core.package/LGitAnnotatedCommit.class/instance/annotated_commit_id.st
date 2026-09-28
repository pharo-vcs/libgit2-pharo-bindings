libgit - calls
annotated_commit_id

	 ^ self ffiCall: #(LGitId * git_annotated_commit_id #(self)) options: #()
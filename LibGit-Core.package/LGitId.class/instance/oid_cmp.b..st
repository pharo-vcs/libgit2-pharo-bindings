libgit - calls
oid_cmp: a b: b

	^self ffiCall: #(int git_oid_cmp(LGitId * self, LGitId * b)) options: #(  )
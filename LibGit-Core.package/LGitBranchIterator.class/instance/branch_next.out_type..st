libgit - calls
branch_next: out out_type: out_type
	^ self
		ffiCall:
			#(LGitReturnCodeEnum git_branch_next #(
				LGitReference * out ,
				LGitWriteBackValueUInt * out_type,
				LGitBranchIterator self))
		options: #()
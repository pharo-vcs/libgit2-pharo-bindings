libgit - calls
stash_save: id signature: signature message: message flags: flags

	^ self
		ffiCall: #(LGitReturnCodeEnum git_stash_save(LGitId * id, self, LGitSignature * signature, String message, LGitStashFlagsEnum flags))
		options: #()
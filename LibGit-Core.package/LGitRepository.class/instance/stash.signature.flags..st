operations
stash: message signature: signature flags: flags

	| stash |

	stash := LGitId new.
	self withReturnHandlerDo: [
		self stash_save: stash signature: signature message: message flags: flags ].
	^ stash
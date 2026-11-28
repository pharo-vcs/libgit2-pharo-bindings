testing
isProperRepository
	"git_repository_open_ext writes the repository into the handle of its first argument. Open it in another instance and free it, so that my handle does not leak and no repository stays open, which Windows then refuses to delete."

	| probe return |
	probe := self class on: self repositoryReference.
	return := [
		probe
			repository_open_ext: probe
			path: self repositoryReference pathString
			flags: LGitOpenFlagEnum git_repository_open_no_search
			ceiling_dirs: nil ] ensure: [ probe free ].

	^ return isOk
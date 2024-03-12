libgit - calls
pathspec_match: ps flags: flags
	"See: https://libgit2.org/libgit2/#HEAD/group/pathspec/git_pathspec_match_tree"

	^ self ffiCallSafely: #(
		int
		git_pathspec_match_tree(
			void* 0,
			self,
			LGitPathSpecFlagTypeEnum flags,
			LGitPathSpec ps))

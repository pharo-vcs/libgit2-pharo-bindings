libgit - calls
pathspec_match: ps flags: flags
	^ self ffiCall: #(int git_pathspec_match_tree(int 0, self, LGitPathSpecFlagTypeEnum flags, LGitPathSpec ps))
operations
diffTree: oldTree toWorkdirWithIndexOptions: anLGitDiffOptions

	self withReturnHandlerDo: [
			self
				diff_tree_to_workdir_with_index: self
				repo: self repository
				old_tree: oldTree
				opts: anLGitDiffOptions ]
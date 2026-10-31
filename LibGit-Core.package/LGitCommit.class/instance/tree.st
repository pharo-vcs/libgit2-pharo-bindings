accessing
tree

	| tree |
	tree := LGitTree of: self repository.
	tree autoRelease.
	self commit_tree: tree commit: self.
	^ tree
external resource management
autoReleaseOwned
	"Register this entry for release. Only for entries the caller owns, such as the ones returned by git_tree_entry_bypath: entries returned by name or index belong to their tree and must not be freed."

	^ super autoRelease
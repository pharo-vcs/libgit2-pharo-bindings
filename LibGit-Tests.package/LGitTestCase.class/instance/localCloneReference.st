helpers
localCloneReference
	"Folder where a test clones a local remote. tearDown deletes it."

	^ FileSystem disk workingDirectory / '_test_repo_clone'
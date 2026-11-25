helpers
localBareReference
	"Folder of a bare repository that a test uses as a push target. tearDown deletes it."

	^ FileSystem disk workingDirectory / '_test_repo_bare'
operations
open
	"git_repository_open writes the new repository into my handle. Free the repository of a previous clone, init or open first, otherwise it leaks and keeps its files open, which Windows then refuses to delete."

	self free.
	[ self withReturnHandlerDo: [ self repository_open: self bare_path: self repositoryReference pathString ] ]
		on: LGit_GIT_ENOTFOUND
		do: [ :error | LGitRepositoryNotFound signal: 'Could not find a repository at ' , self repositoryReference pathString ].
	self beOpen
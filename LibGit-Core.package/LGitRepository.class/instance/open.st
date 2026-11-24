operations
open

	[ self withReturnHandlerDo: [ self repository_open: self bare_path: self repositoryReference pathString ] ]
		on: LGit_GIT_ENOTFOUND
		do: [ :error | LGitRepositoryNotFound signal: 'Could not find a repository at ' , self repositoryReference pathString ].
	self beOpen
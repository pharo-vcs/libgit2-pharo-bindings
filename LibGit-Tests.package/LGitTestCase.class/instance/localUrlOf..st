helpers
localUrlOf: aRepository
	"URL that libgit2 uses to clone or fetch from aRepository through the local file transport."

	^ 'file://' , aRepository repositoryReference fullName
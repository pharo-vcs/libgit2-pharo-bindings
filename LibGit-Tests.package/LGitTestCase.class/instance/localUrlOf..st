helpers
localUrlOf: aRepository
	"URL that libgit2 uses to clone or fetch from aRepository through the local file transport."

	| path |
	path := aRepository repositoryReference fullName copyReplaceAll: '\' with: '/'.
	^ (path beginsWith: '/') ifTrue: [ 'file://' , path ] ifFalse: [ 'file:///' , path ]
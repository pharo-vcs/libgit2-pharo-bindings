tests
testEntryByNameIsNotRegisteredForRelease
	"The tree owns entries returned by name: freeing them here would be a double free."

	| repo headTree entry |
	repo := self newRepo state4WithCommit.
	headTree := repo head resolve object tree.

	entry := headTree entryByName: 'libgit_tests' ifAbsent: [ nil ].
	self deny: (self isRegisteredForRelease: entry)
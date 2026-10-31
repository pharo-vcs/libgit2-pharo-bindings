tests
testEntryByRelativePathIsRegisteredForRelease

	| repo headTree entry |
	repo := self newRepo state4WithCommit.
	headTree := repo head resolve object tree.

	entry := headTree entryByRelativePath: 'libgit_tests' ifAbsent: [ nil ].
	self assert: (self isRegisteredForRelease: entry)
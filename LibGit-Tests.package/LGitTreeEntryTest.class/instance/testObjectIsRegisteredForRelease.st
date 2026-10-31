tests
testObjectIsRegisteredForRelease

	| repo headTree entry object |
	repo := self newRepo state4WithCommit.
	headTree := repo head resolve object tree.

	entry := headTree entryByPath: 'libgit_tests' ifAbsent: [ nil ].
	object := entry object.
	self assert: (self isRegisteredForRelease: object)
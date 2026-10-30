tests
testCallbacksUseLGitLibrary

	| callback |
	callback := LGitTransferProgressCallback on: [ :stats :payload | 0 ].

	self assert: callback ffiLibraryName identicalTo: LGitLibrary.
	self assert: LGitTransferProgressCallback null ffiLibraryName identicalTo: LGitLibrary
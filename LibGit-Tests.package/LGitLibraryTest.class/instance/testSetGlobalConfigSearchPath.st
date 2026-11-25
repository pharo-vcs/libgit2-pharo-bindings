tests
testSetGlobalConfigSearchPath

	| folder repository |
	folder := (FileLocator temp / 'lgit-global-config-search-path') ensureCreateDirectory.
	(folder / '.gitconfig')
		ensureDelete;
		writeStreamDo: [ :stream |
			stream
				nextPutAll: '[user]';
				nextPut: Character lf;
				nextPut: Character tab;
				nextPutAll: 'name = Search Path User';
				nextPut: Character lf ].
	LGitTestRepository tearDown.
	[
		self assert: (LGitLibrary uniqueInstance setGlobalConfigSearchPath: folder pathString) equals: 0.
		repository := LGitTestRepository state2Initialized.
		self assert: (repository config openGlobal getString: 'user.name' ifAbsent: [ nil ]) equals: 'Search Path User' ] ensure: [
			LGitLibrary uniqueInstance setGlobalConfigSearchPath: nil.
			repository ifNotNil: [ repository free ].
			LGitTestRepository tearDown.
			folder ensureDeleteAll ]
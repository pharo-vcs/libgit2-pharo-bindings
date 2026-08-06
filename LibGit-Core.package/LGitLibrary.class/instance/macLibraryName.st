accessing - platform
macLibraryName

	^ FFIMacLibraryFinder findAnyLibrary: #(
		'libgit2-1.9.1.9.0.dylib'
		'libgit2.1.6.4.dylib'
		'libgit2.1.4.4.dylib'
		'libgit2.dylib')
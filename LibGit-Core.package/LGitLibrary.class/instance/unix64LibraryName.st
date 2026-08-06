accessing - platform
unix64LibraryName

	^ FFIUnix64LibraryFinder findAnyLibrary: #(
		'libgit2.so.1.9'
		'libgit2.so.1.8'
		'libgit2.so.1.7'
		'libgit2.so.1.6'
		'libgit2.so.1.5'
		'libgit2.so.1.4.4'
		'libgit2.so.1.4'
		'libgit2.so.1.3'
		'libgit2.so.1.2'
		'libgit2.so.1.1'
		'libgit2.1.0.0.so' 
		'libgit2.so.1.0.0' 
		'libgit2.so.1.0'
		'libgit2.so.0.25.1')
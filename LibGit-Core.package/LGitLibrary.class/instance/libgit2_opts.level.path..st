libgit - calls
libgit2_opts: anOption level: aLevel path: aPath
	"Call git_libgit2_opts, which is variadic in libgit2: only the option is a fixed argument."

	^ self ffiCall: #( int git_libgit2_opts #( int anOption #, int aLevel #, String aPath ) ) fixedArgumentCount: 1
configuration
setGlobalConfigSearchPath: aPath
	"Point libgit2 at aPath, a path list, for global configuration files. Pass nil to reset to the default."

	^ self libgit2_opts: 5 level: 4 path: aPath
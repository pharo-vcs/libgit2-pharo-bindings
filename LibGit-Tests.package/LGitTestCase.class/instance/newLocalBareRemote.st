helpers
newLocalBareRemote
	"Bare copy of the fixture with one commit, usable as a push target through the local file transport."

	| source options bare |
	source := self newRepo state4WithCommit.
	options := LGitCloneOptions defaults.
	options prim_bare: 1.
	bare := LGitRepository on: self localBareReference.
	bare clone: (self localUrlOf: source) options: options.
	^ bare
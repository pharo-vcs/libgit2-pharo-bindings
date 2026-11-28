helpers
newLocalBareRemote
	"Bare copy of the fixture with one commit, usable as a push target through the local file transport. The answered repository is freed: the tests only need its location, and an open repository keeps its pack files locked on Windows."

	| source options bare |
	source := self newRepo state4WithCommit.
	options := LGitCloneOptions defaults.
	options prim_bare: 1.
	bare := LGitRepository on: self localBareReference.
	bare clone: (self localUrlOf: source) options: options.
	bare free.
	^ bare
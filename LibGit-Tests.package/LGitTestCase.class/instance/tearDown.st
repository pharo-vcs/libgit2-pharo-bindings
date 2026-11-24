running
tearDown

	repository ifNotNil: [ repository free ].
	self localCloneReference ensureDeleteAll.
	self localBareReference ensureDeleteAll.
	super tearDown
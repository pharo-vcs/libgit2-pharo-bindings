system startup
startUp: isImageStarting

	isImageStarting ifFalse: [ ^ self ].
	self uniqueInstance initializeLibGit2
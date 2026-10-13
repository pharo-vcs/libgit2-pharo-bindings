tests
testHeadIsRegisteredForRelease

	| head |
	head := repository head.
	self assert: (self isRegisteredForRelease: head)
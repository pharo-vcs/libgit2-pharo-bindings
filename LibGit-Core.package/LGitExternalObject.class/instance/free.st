finalization
free

	handle isExternalAddress ifFalse: [ ^ self ].
	self class finalizeResourceData: handle.
	self assert: handle isNull
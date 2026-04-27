finalization
free

	(handle isExternalAddress and: [ handle isNullOrNil not]) 
		ifFalse: [ ^ self ].
	self class finalizeResourceData: handle.
	self assert: handle isNull
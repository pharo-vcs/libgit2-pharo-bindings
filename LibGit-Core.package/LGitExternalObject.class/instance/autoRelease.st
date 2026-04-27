external resource management
autoRelease

	(FFIExternalResourceManager uniqueInstance includes: self) 
		ifTrue: [ ^ self ].
	super autoRelease
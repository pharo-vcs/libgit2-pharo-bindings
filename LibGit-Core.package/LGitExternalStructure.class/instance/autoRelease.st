external resource management
autoRelease
	"Some LGit structures need specialised free functions. Use the same autoRelease functionality
	as FFIExternalReference to achieve this.

	Note: subclasses should implement #resourceData
	and #finalizeResourceData: on class side"
	
	(FFIExternalResourceManager uniqueInstance includes: self) 
		ifTrue: [ ^ self ].	
	
	FFIExternalResourceManager addResource: self
libgit-fields
prim_remote_ready: anObject
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_PRIM_REMOTE_READY
		put: (anObject 
			ifNotNil: [ anObject thunk asExternalAddress ]
			ifNil: [ ExternalAddress null ])
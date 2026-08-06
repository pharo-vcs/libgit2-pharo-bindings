libgit-fields
prim_update_refs: anObject
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_PRIM_UPDATE_REFS
		put: (anObject 
			ifNotNil: [ anObject thunk asExternalAddress ]
			ifNil: [ ExternalAddress null ])
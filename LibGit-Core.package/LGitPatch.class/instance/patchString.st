printing
patchString	
	| buf patchString |
	buf := LGitBuf new.
	self patch_to_buf: buf.
	patchString := buf prim_ptr utf8StringFromCString.
	buf free.
	^ patchString
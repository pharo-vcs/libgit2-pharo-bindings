libgit - calls
clone: aString options: cloneOptions to: aFileReference
	<todo: 'use exceptions instead of assertion'>
	self assert: aString isEmptyOrNil not.
	self assert: aFileReference isNotNil.
	self assert: cloneOptions isNotNil.
	
	aFileReference ensureCreateDirectory.
	
	self withReturnHandlerDo: [ 
		self 
			clone: self
			url: aString
			local_path: aFileReference pathString
			options: cloneOptions getHandle ]
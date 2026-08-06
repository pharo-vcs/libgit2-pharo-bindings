operations
refresh

	self withReturnHandlerDo: [ 
		self
			index_read: self
			force: false ]

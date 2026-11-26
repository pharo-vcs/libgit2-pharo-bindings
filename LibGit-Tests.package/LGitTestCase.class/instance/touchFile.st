helpers
touchFile

	self file writeStreamDo: [ :stream | stream nextPutAll: 'extra text' ]
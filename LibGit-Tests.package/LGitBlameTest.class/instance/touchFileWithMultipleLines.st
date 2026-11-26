helpers
touchFileWithMultipleLines

	self file writeStreamDo: [ :stream |
		stream
			nextPutAll: 'extra text';
			crlf;
			nextPutAll: 'line 2 ---';
			crlf;
			nextPutAll: '+++line 3' ]
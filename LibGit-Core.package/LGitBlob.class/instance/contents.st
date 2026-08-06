accessing
contents

	^ self isBinary
		ifTrue:  [ self binaryContents ]
		ifFalse: [ (self rawBuffer copyFrom: 1 to: self rawSize) utf8Decoded ]
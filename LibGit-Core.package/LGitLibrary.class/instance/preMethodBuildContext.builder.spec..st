accessing - platform
preMethodBuildContext: sender builder: builder spec: functionSpec

	sender method methodClass isClassSide ifTrue: [ ^ self ].

	(sender method literals includesAnyOf: #(#ffiCall: #ffiCall:options:))
		ifTrue: [  
					builder
						pushReceiver;
						send: #signalIfNotReady]
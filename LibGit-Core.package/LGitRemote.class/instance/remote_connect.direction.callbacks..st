libgit - calls
remote_connect: remote direction: direction callbacks: remoteCallbacks

	^ (self ffiLibrary uniqueInstance isVersionLessThan: #(1 2))
		  ifTrue: [ self shouldBeImplemented ]
		  ifFalse: [
				self
				  remote_connect_v120: remote
				  direction: direction
				  callbacks: remoteCallbacks ]

accessing
remoteCallbacksStructureClass

	"Find the correct class depending on the libgit version we are using"
	(self ffiLibrary uniqueInstance isVersionLessThan: #(1))
		ifTrue: [ ^ LGitRemoteCallbacksV02x ].
	(self ffiLibrary uniqueInstance isVersionLessThan: #(1 2))
		ifTrue: [ ^ LGitRemoteCallbacksV100 ].
	(self ffiLibrary uniqueInstance isVersionLessThan: #(1 9))
		ifTrue: [ ^ LGitRemoteCallbacksV120 ].

	^ LGitRemoteCallbacksV190
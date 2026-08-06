accessing
pushOptionsStructureClass

	"Find the correct class depending on the libgit version we are using"
	(self ffiLibrary uniqueInstance isVersionLessThan: #(1 4))
		ifTrue: [ ^ LGitPushOptionsV02x ].
	(self ffiLibrary uniqueInstance isVersionLessThan: #(1 8))
		ifTrue: [ ^ LGitPushOptionsV140 ].

	^ LGitPushOptionsV180
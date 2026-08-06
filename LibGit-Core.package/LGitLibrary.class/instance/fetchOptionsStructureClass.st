accessing
fetchOptionsStructureClass

	"Find the correct class depending on the libgit version we are using"
	(self ffiLibrary uniqueInstance isVersionLessThan: #(1))
		ifTrue: [ ^ LGitFetchOptionsV02x ].
	(self ffiLibrary uniqueInstance isVersionLessThan: #(1 2))
		ifTrue: [ ^ LGitFetchOptionsV100 ].
	(self ffiLibrary uniqueInstance isVersionLessThan: #(1 4))
		ifTrue: [ ^ LGitFetchOptionsV120 ].
		
	"This struct is valid between 1.6.4 and 1.7.2"
	(self ffiLibrary uniqueInstance isVersionLessThan: #(1 8))
		ifTrue: [ ^ LGitFetchOptionsV160 ].
		
	^ LGitFetchOptionsV190
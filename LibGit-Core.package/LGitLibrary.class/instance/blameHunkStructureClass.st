accessing
blameHunkStructureClass

	"Find the correct class depending on the libgit version we are using"
	(self ffiLibrary uniqueInstance isVersionLessThan: #(1 9))
		ifTrue: [ ^ LGitBlameHunkV180 ].
		
	^ LGitBlameHunkV190
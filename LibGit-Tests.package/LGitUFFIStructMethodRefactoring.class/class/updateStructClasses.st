updating
updateStructClasses

	LGitExternalStructure allSubclassesDo: [ :eachClass |
		self updateStructClass: eachClass ]
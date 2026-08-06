updating
updateAll

	LGitExternalObject allSubclassesDo: [ :each |
		self new
			setClass: each;
			execute ]
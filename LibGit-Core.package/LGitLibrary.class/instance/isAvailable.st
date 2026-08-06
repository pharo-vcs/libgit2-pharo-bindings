testing
isAvailable
	"answer true if library presenter."

	^ [ self libraryName. true ]
		on: Error 
		do: [ :e | false ]
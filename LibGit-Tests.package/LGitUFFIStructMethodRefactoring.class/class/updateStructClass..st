updating
updateStructClass: structClass

	self new
		setClass: structClass;
		execute.
		
	"regenerate the field accessors"
	structClass compileFields: structClass fields withAccessors: true.

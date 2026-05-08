class management
resetStructureIfNotIn: alreadyReset
	"Reset myself by recompiling all my fields."

	super resetStructureIfNotIn: alreadyReset.
	compiledSpec := nil
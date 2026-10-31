instance creation
of: aRepository
	"References are owned by the caller, so they are freed when garbage collected. Every creator goes through here."

	^ (super of: aRepository)
		  autoRelease;
		  yourself
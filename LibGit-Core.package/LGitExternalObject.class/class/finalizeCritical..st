finalization
finalizeCritical: aBlock

	FinalizeMutex ifNil: [ FinalizeMutex := Mutex new ].
	FinalizeMutex critical: aBlock
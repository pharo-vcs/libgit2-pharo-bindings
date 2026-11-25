tests
testFreeingConfigsKeepsTheRepositoryConfigUsable
	"Each config is freed by its finalizer. A wrong free function used to corrupt the repository config, and later reads crashed the VM."

	repository := self newRepo state3Opened.
	10 timesRepeat: [ repository config ].
	3 timesRepeat: [ Smalltalk garbageCollect ].

	self deny: (repository config getBoolean: 'core.bare')
tests
testPackCreation

	| repo packReference |
	"temp: disable this test"
	1 > 0 ifTrue: [ ^ self skip ].
	repo := self newRepo state4WithCommit.
	packReference := repo repositoryReference / '.git/objects/pack'.
	self assert: packReference entries isEmpty.

	repo createPackForReference: repo head.
	self assert: packReference exists.
	self assert: packReference files size equals: 2.
	#( '.idx' '.pack' ) do: [ :suffix | self assert: (packReference files anySatisfy: [ :theFile | theFile basename endsWith: suffix ]) ]
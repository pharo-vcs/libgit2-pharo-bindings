tests
testTargetId
	| oId commit |
	oId := repository head targetId.
	self assert: oId isNotNil.
	"id shoud be internalized"
	self deny: oId getHandle isExternalAddress.
	
	commit := LGitCommit of: repository fromId: oId.
	self assert: commit message equals: 'push test'
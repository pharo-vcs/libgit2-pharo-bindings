preconditions
updateCallMethod: aMethod

	| replacer pragmaNode |
	
	pragmaNode := aMethod parseTree pragmas
		detect: [ :each | each selector = #primitive:module:error: ]
		ifNone: [ ^self ].

	replacer := RBParseTreeRewriter new.

	replacer replaceTree: pragmaNode withTree: RBSequenceNode new. 

	self uffiTypes keysAndValuesDo: [ :old :new |
		replacer replaceTree: (RBLiteralNode value: old)
			withTree: (RBLiteralNode value: new) ].
	
	self convertMethod: aMethod selector for: aMethod modelClass using: replacer

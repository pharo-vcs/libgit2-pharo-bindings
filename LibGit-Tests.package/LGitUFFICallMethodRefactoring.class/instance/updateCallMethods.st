preconditions
updateCallMethods

	| selectors |
	
	selectors := class existingMethodsThatReferTo: #primitiveNativeCall.
	selectors do: [ :each | self updateCallMethod: (class methodFor: each) ].
	
	selectors := class theMetaClass existingMethodsThatReferTo: #primitiveNativeCall.
	selectors do: [ :each | self updateCallMethod: (class theMetaClass methodFor: each) ]
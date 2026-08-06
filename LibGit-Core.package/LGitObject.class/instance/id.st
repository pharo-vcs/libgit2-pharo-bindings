accessing
id

	| data |
	(id isNotNil or: [ self isNull ]) ifTrue: [ ^ id ].

	data := self get_id_data.
	id := LGitId fromHandle: data getHandle.
	id internalize.
	^ id
libgit-calls
diff_num_deltas: diff
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(NBUInt32 git_diff_num_deltas(self))
		options: #(  )
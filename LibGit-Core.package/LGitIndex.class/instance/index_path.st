libgit - calls
index_path

	^ self
		ffiCall: #(String git_index_path #(self))
		options: #()
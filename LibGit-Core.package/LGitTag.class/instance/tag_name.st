libgit - calls
tag_name
	^ self ffiCall: #(String git_tag_name #(self)) options: #()
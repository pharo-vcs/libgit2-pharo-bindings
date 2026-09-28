libgit - calls
tag_free: handle
	^ self ffiCall: #(void git_tag_free #(void *handle)) options: #()
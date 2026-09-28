libgit - calls
object_free: handle 
	^self ffiCall: #(void git_object_free(void *handle)) options: #(  )
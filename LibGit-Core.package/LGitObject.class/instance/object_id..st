libgit - calls
object_id: obj
	
	^ self
		ffiCall: #(void * git_object_id #(self))
		options: #()
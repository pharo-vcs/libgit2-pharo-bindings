libgit - calls
patch_to_buf: out

	^ self
		  ffiCallSafely:
			  #( LGitReturnCodeEnum git_patch_to_buf #( LGitBuf * out , LGitPatch
			        self ) )
		  options: #( optMayGC optCoerceNilToNull )
libgit - calls
remote_connect_v120: aLGitRemote direction: aLGitDirectionEnum callbacks: aLGitRemoteCallbacksV120

	^ self ffiCallSafely: #(
		LGitReturnCodeEnum
		git_remote_connect #(
			self,
			LGitDirectionEnum aLGitDirectionEnum,
			LGitRemoteCallbacksV120 * aLGitRemoteCallbacksV120,
			nil,
			nil ))
		options: #()
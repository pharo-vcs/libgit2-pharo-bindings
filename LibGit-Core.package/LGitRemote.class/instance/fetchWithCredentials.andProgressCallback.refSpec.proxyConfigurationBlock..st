operations
fetchWithCredentials: aCredentialsProvider andProgressCallback: progressCallback refSpec: aRefSpec proxyConfigurationBlock: proxyConfigurationBlock
	| refSpecs callbacks fetchOptions |
	self isReady ifFalse: [ self create ].
	refSpecs := aRefSpec ifNotNil: [LGitStringArray withAll: { aRefSpec asString }].
	self withReturnHandlerDo: [ 
		callbacks := self ffiLibrary uniqueInstance remoteCallbacksStructureClass withProvider: aCredentialsProvider.
		progressCallback ifNotNil: [callbacks transferProgress: progressCallback].

		fetchOptions := (self ffiLibrary uniqueInstance fetchOptionsStructureClass defaults
								callbacks: callbacks;
								yourself).

		proxyConfigurationBlock value: fetchOptions proxyOptions.

		self
			remote_fetch: self
			refspecs: refSpecs
			opts: fetchOptions
			reflog_message: nil ]
operations
fetchWithCredentials: aCredentialsProvider andProgressCallback: progressCallback refSpec: aRefSpec

	^ self
		  fetchWithCredentials: aCredentialsProvider
		  andProgressCallback: progressCallback
		  refSpec: aRefSpec
		  proxyConfigurationBlock: [ :proxyOpts |  ]
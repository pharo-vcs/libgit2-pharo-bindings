operations
fetchWithCredentials: aCredentialsProvider andProgressCallback: progressCallback
	
	^ self
		  fetchWithCredentials: aCredentialsProvider
		  andProgressCallback: progressCallback
		  refSpec: nil
		  proxyConfigurationBlock: [ :proxyOpts |  ]	
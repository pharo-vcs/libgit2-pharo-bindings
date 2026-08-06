operations
fetchWithCredentials: aCredentialsProvider
	
	^ self
		  fetchWithCredentials: aCredentialsProvider
		  andProgressCallback: nil
		  refSpec: nil
		  proxyConfigurationBlock: [ :proxyOpts |  ]
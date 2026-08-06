operations
fetchWithCredentials: aCredentialsProvider refSpec: aRefSpec

	^ self
		  fetchWithCredentials: aCredentialsProvider
		  andProgressCallback: nil
		  refSpec: aRefSpec
		  proxyConfigurationBlock: [ :proyOpts | ]
operations
createWith: aStructure urlUsername: urlUsername
	<todo: 'use exceptions instead of assertions'>
	self assert: self publicKeyReference exists.
	self assert: self privateKeyReference exists.

	self withReturnHandlerDo: [
		self
			cred_ssh_key_new: aStructure
			username: urlUsername
			publickey: self publicKeyReference fullName
			privatekey: self privateKeyReference fullName
			passphrase: self passphrase ]
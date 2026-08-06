operations
createWith: aStructure urlUsername: urlUsername
	"I ignore the username that come from the url, as we are using plaintext credentials"

	(self username isEmptyOrNil 
		or: [ self passphrase isEmptyOrNil ])
		ifTrue: [ LGitNoCredentialsProvided signal ].

	self withReturnHandlerDo: [
		self
			cred_userpass_plaintext_new: aStructure
			username: self username
			password: self passphrase ]
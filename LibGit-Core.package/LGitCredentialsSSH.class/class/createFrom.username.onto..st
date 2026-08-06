instance creation
createFrom: provider username: username onto: lgitCredentials

	| credentials |
	^ [
	  credentials := self new.
	  provider provideSshCredentialsTo: credentials.
	  credentials createWith: lgitCredentials urlUsername: username.
	  0 ]
		  on: LGitNoCredentialsProvided
		  do: [
			  LGitError setError: 'Invalid ssh keys in provided files.'.
			  -1 ]
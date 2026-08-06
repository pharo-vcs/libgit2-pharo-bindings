instance creation
createFrom: provider username: username onto: lgitCredentials

	| credentials |
	[
		credentials := self new.
		provider providePlaintextCredentialsTo: credentials.
		credentials createWith: lgitCredentials urlUsername: username.
		^ 0 ]
		on: LGitNoCredentialsProvided
		do: [ :e |
			LGitError setError: 'Invalid username and/or password provided.'.
			^ -1 ]
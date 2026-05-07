accessing
runner

	^ runner ifNil: [ runner := TFWorker named: 'libgit2' ]
"Disable metacello integration to ensure it wont be used to unload/load itself"
"Iceberg enableMetacelloIntegration: false."
"Remove libgit2 from system (so I can reload it)"
#( 'BaselineOfLibGit' ) 
do: [ :each | (each asPackageIfAbsent: [ nil ]) ifNotNil: #removeFromSystem ]

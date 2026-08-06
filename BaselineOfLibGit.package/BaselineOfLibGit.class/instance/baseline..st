baseline
baseline: spec
  <baseline>
  spec
    for: #(common)
    do: [
      spec
    	  package: 'LibGit-FileSystem' with: [ spec requires: 'LibGit-Core' ];    
		  package: 'LibGit-Tests' with: [ spec requires: 'LibGit-Core' ];
        package: 'LibGit-Patches' with: [ spec requires: 'LibGit-Core' ];
        package: 'LibGit-Core'.
      spec
        group: 'default'
        with: #('LibGit-Core' 'LibGit-FileSystem').
		spec
			group: 'development'
			with: #('default' 'LibGit-Tests' 'LibGit-Patches').
		spec
			group: 'tests'
			with: #('LibGit-Tests') ]

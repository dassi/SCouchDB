baseline
baseline: spec
	<baseline>
	spec for: #common do: [ 
		self voyage: spec.
		
		spec

		package: 'SCouchDB-JSON';
		package: 'SCouchDB-Core' with: [ spec requires: #('SCouchDB-JSON' ) ];
		package: 'SCouchDB-Voyage' with: [ spec requires: #('SCouchDB-Core' 'Voyage-Model-Core') ];
		package: 'SCouchDB-ViewServer' with: [ spec requires: #('SCouchDB-Voyage') ].
		
		self groups: spec
	]

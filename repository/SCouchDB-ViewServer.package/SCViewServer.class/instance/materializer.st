serialization
materializer
	^ materializer ifNil:[ materializer := SCMaterializer new defaultMapClass: SCDocument]
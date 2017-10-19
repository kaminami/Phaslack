private
getHandler
	^ self handler isClass 
		ifTrue: [ self handler new ]
		ifFalse: [ self handler ]

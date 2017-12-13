convenience
getDirectIdByName: userName
	| results ims |
	results := self imListOptions: Dictionary new.
	ims := results values at:'ims' ifAbsent:[ #() ].
	
	ims ifNotEmpty: [
		| userId im |
		userId := self getUserIdByName: userName. 
		im := ims detect:[:v | (v at: 'user' ifAbsent: [ nil ]) = userId ] ifNone:[ nil ]. 
		im ifNotNil:[ ^ im at:'id' ifAbsent:[nil] ].
	].
	^ nil
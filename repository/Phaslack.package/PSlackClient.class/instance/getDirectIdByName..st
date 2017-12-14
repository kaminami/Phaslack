convenience
getDirectIdByName: userName
	| results ims userId im |
	results := self imListOptions: Dictionary new.
	ims := results values at:'ims' ifAbsent:[].
	ims isEmptyOrNil ifTrue: [ ^ nil ].
	
	userId := self getUserIdByName: userName. 
	im := ims detect:[:v | (v at: 'user' ifAbsent: [ nil ]) = userId ] ifNone:[ ^ nil ]. 
	^ im at:'id' ifAbsent:[ ].
convenience
getUserIdByName: userName
	| members member | 
	members := self usersList values at: 'members'.
	member := members detect:[:v | (v at: 'name' ifAbsent:[ ]) = userName ] ifNone:[ ^ nil ].
	
	^ member at: 'id' ifAbsent:[ ].
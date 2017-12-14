convenience
getUserIdByName: userName
	| userList members member | 
	userList := self usersList.
	members := userList  values at: 'members'.
	member := members detect:[:v | (v at: 'name' ifAbsent:[ ]) = userName ] ifNone:[ ^ nil ].
	
	^ member at: 'id' ifAbsent:[  ].
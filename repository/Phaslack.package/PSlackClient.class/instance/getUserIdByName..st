convenience
getUserIdByName: userName
	| userList members member | 
	userList := self usersList.
	members := userList  values at: 'members'.
	member := members detect:[:v | (v at: 'name' ifAbsent:[ nil ]) = userName ].
	member isEmptyOrNil ifFalse:[ ^ member at: 'id' ifAbsent:[ nil ] ].
	^ nil
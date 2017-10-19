accessing
user
	user ifNil: [ user := self class defaultUserName ].
	^ user
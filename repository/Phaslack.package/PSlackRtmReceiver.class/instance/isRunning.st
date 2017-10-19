testing
isRunning
	self webSocket ifNil: [ ^ false ].
	self webSocket isConnected ifFalse: [ ^ false ].

	^ true
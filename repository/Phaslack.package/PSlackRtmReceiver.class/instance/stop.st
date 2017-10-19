running
stop
	self isRunning ifFalse: [ ^ self ].
	
	[
		self webSocket close.
		self webSocket: nil.
	] on: Error do: [:ex | "ignore" ]	
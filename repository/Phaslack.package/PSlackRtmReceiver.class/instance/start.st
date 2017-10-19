running
start
	self isRunning ifTrue: [ self ].
	
	webSocket := ZnWebSocket to: self url.
	
	process := [ 
		[ webSocket runWith: [ :eventMessage | self handleEvent: eventMessage ] ]
			on: Error 
			do: [ :ex | Transcript cr; show: ex messageText ]
	] forkAt: Processor userBackgroundPriority
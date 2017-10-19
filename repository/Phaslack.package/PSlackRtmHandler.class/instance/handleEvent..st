event handling
handleEvent: message
	| values eventType selector |
	values := NeoJSONReader fromString: message.
	values isEmptyOrNil ifTrue: [ ^ self ].
	
	eventType := values at: 'type'.
	selector := self handleMethodSelectorOf: eventType.
	
	(self respondsTo: selector) ifFalse: [
		Transcript cr; show: ('{1} : unknown event type: {2}' format: {thisContext printString. eventType}).
		^ self 
	].

	self perform: selector with: values.

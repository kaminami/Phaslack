api-chat
chatPostMessage: message channel: channel
	^ self 
		chatPostMessage: message 
		channel: channel 
		options: Dictionary new
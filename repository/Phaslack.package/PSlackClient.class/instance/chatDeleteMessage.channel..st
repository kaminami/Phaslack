api-chat
chatDeleteMessage: messageDict channel: channel
	^ self 
		chatDeleteMessage: messageDict 
		channel: channel 
		options: Dictionary new
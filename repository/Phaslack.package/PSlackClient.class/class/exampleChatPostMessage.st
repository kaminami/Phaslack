examples-chat
exampleChatPostMessage
"
	PSlackClient exampleChatPostMessage
"

	^ PSlackClient exampleClient 
		chatPostMessage: (thisContext printString , ' --> ' , DateAndTime now asString)
		channel: 'test'.
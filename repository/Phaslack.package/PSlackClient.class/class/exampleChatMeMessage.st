examples-chat
exampleChatMeMessage
"
	PSlackClient exampleChatMeMessage
"

	^ PSlackClient exampleClient 
		chatMeMessage: (thisContext printString , ' --> ' , DateAndTime now asString)
		channel: 'test'
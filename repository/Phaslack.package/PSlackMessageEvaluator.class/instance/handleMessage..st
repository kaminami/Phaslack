event handling
handleMessage: values
	| userId userName channel infoRes src result resStr |

	(values includesKey: 'bot_id') ifTrue: [ ^ self ].

	userId := values at: 'user'.
	channel := values at: 'channel'.
	
	infoRes := self client usersInfo: userId.
	userName := (infoRes valueAt: 'user') at: 'name'.
	
	src := values at: 'text'.
	result := [ Compiler evaluate: src trim ] on: Error do: [:ex | ex message ].
	
	resStr := '@{1}
{2}' format: {userName. result }.
	
	self client 
		chatPostMessage: resStr
		channel: channel
api-chat
chatMeMessage: message channel: channel
	| values res |
	values := Dictionary new
						at: 'username' put: self user;						
						at: 'channel' put: channel;
						at: 'text' put: message;
						yourself.
						
	res := self post: 'chat.meMessage' withValues: values.
	^ res
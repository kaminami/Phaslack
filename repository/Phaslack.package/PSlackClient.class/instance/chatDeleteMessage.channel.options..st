api-chat
chatDeleteMessage: messageDict channel: channel options: options
	| values res |
	values := options copy
		at: 'channel' put: channel;
		at: 'ts' put: (messageDict at:'ts');
		yourself.
						
	res := self post: 'chat.delete' withValues: values.
	^ res
api-im
imHistoryChannel: channel Options: options
	| values res |
	values := options copy
		at: 'token' put: self token;
		at: 'channel' put: channel;
		yourself.
						
	res := self post: 'im.history' withValues: values.
	^ res
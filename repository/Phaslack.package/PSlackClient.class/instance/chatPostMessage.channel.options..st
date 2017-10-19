api-chat
chatPostMessage: message channel: channel options: options
	| values res |
	values := options copy
		at: 'token' put: self token;
		at: 'username' put: self user;
		at: 'link_names' put: '1';
		at: 'channel' put: channel;
		at: 'text' put: message;
		yourself.
						
	res := self post: 'chat.postMessage' withValues: values.
	^ res
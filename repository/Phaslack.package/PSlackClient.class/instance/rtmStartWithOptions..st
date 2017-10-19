api-rtm
rtmStartWithOptions: options
	| values res |
	values := options copy
						at: 'token' put: self token;
						yourself.
						
	res := self post: 'rtm.start' withValues: values.
	^ res
api-rtm
rtmStartWithOptions: options
	| values res |
	values := options copy
						yourself.
						
	res := self post: 'rtm.start' withValues: values.
	^ res
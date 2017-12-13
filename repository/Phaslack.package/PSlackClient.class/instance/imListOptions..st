api-im
imListOptions: options
	| values res |
	values := options copy
		at: 'token' put: self token;
		yourself.
						
	res := self post: 'im.list' withValues: values.
	^ res
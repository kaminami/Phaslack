api-im
imListOptions: options
	| values res |
	values := options copy
		yourself.
						
	res := self post: 'im.list' withValues: values.
	^ res
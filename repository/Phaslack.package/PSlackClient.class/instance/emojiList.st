api-emoji
emojiList
	| values res |
	values := Dictionary new
						at: 'token' put: self token;
						yourself.
						
	res := self post: 'emoji.list' withValues: values.
	^ res
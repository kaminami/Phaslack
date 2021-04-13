api-emoji
emojiList
	| values res |
	values := Dictionary new
						yourself.
						
	res := self post: 'emoji.list' withValues: values.
	^ res
api-users
usersInfo: userId
	| values res |
	values := Dictionary new
						at: 'user' put: userId;
						yourself.
						
	res := self post: 'users.info' withValues: values.
	^ res
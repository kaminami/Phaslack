api-users
usersListOptions: option
	| values res |
	values := option copy
					yourself.
						
	res := self post: 'users.list' withValues: values.
	^ res
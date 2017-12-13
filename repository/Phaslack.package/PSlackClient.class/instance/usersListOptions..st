api-users
usersListOptions: option
	| values res |
	values := option copy
						at: 'token' put: self token;
						yourself.
						
	res := self post: 'users.list' withValues: values.
	^ res
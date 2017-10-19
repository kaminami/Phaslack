api-auth
authTest
	| values res |
	values := Dictionary new
						at: 'token' put: self token;
						yourself.
						
	res := self post: 'auth.test' withValues: values.
	^ res
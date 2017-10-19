instance creation
user: userName token: token
	^ self new
		user: userName;
		token: token;
		yourself
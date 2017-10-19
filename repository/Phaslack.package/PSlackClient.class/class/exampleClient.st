examples
exampleClient
"
	PSlackClient exampleClient
	
	Test token generator: https://api.slack.com/docs/oauth-test-tokens
"

	| user token |
	user := 'phaslackbot'.
	token := ''.

	token ifEmpty: [ self error: 'you need token' ].

	^ self 
		user: user
		token: token
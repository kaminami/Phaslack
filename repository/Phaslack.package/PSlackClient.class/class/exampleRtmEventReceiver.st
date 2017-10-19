examples-rtm
exampleRtmEventReceiver
"
	PSlackClient exampleRtmEventReceiver
"
	| client res url receiver |
	client := PSlackClient exampleClient.
	res := client rtmStart.
	url := res values at: 'url'.
	receiver := PSlackRtmReceiver url: url handler: (PSlackMessageEvaluator client: client).
	receiver start.
	receiver inspect.

	"receiver stop."

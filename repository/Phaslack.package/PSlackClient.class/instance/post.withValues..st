http client
post: entryPoint withValues: aDictionary
	| urlStr client res |
	urlStr := self entryPointUrlFrom: entryPoint.
	
	client := self httpClient.
	
	aDictionary keysAndValuesDo: [ :key :value |
		client formAt: key put: value.
	].
	
	res := client
				url: urlStr asUrl;
				post;
				response.
"	res isError ifTrue: [ self handleApiException: res ]."
	^ PSlackResponse from: res.

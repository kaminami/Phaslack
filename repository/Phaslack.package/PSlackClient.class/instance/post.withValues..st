http client
post: entryPoint withValues: aDictionary
	| urlStr client jsonString res |
	urlStr := self entryPointUrlFrom: entryPoint.
	
	client := self httpClient.
	jsonString := NeoJSONWriter toString: aDictionary.
	res := self jsonPost: urlStr content: jsonString by: client.
"	res isError ifTrue: [ self handleApiException: res ]."
	^ PSlackResponse from: res.

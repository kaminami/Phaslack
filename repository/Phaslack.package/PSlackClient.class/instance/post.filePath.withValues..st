http client
post: entryPoint filePath: filePath withValues: aDictionary
	| urlStr client res anEntity |
	urlStr := self entryPointUrlFrom: entryPoint.
	
	client := self httpClient.

	anEntity := client multiPartFormDataEntity. 
	
	anEntity addPart: (ZnMimePart fieldName: 'file' fileNamed: filePath).
	aDictionary keysAndValuesDo: [ :key :value |
		client addPart: (ZnMimePart fieldName: key value: value)
	].
		
	res := client
				url: urlStr asUrl;
				post;
				response.
"	res isError ifTrue: [ self handleApiException: res ]."
	^ PSlackResponse from: res.

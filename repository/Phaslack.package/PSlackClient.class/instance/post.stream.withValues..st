http client
post: entryPoint stream: stream withValues: aDictionary
	| urlStr client res anEntity streamingEntity fileName |
	urlStr := self entryPointUrlFrom: entryPoint.
	
	client := self httpClient.

	anEntity := client multiPartFormDataEntity. 
	
	fileName := aDictionary at: 'filename'.
	streamingEntity := (ZnStreamingEntity type: (ZnMimeType forFilenameExtension: (ZnFileSystemUtils extensionFor: fileName)) length: stream size) 
								stream: stream.
	
	anEntity addPart: (ZnMimePart fieldName: 'file' fileName: fileName entity: streamingEntity).
	aDictionary keysAndValuesDo: [ :key :value |
		client addPart: (ZnMimePart fieldName: key value: value)
	].
		
	res := client
				url: urlStr asUrl;
				post;
				response.
"	res isError ifTrue: [ self handleApiException: res ]."
	^ PSlackResponse from: res.

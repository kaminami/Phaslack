examples-files
exampleFilesUploadStream
"
	PSlackClient exampleFilesUploadStream
"
	| stream |
	stream := 'DebugReport-20141011153405.zip' asFileReference readStream 
					binary; 
					yourself.
	^ PSlackClient exampleClient 
		filesUploadStream: stream 
		fileNamed: 'DebugReport.zip' 
		channels: #('test')
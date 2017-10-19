examples-files
exampleFilesUploadContent
"
	PSlackClient exampleFilesUploadContent
"

	^ PSlackClient exampleClient 
		filesUploadContent: 'hello hello' 
		fileNamed: 'hello.txt' 
		channels: #('test').

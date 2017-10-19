examples-files
exampleFilesUpload
"
	PSlackClient exampleFilesUpload
"

	^ PSlackClient exampleClient 
			filesUpload: './temp/test.txt'
			fileNamed: 'test.txt' 
			channels: #('test').
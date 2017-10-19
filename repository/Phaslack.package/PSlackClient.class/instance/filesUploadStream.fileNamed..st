api-files
filesUploadStream: stream fileNamed: fileName
	^ self 
		filesUploadStream: stream 
		fileNamed: fileName 
		options: Dictionary new
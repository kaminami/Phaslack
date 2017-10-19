api-files
filesUploadStream: stream fileNamed: fileName channels: channels
	| options |
	options := Dictionary new
					at: 'channels' put: (',' join: channels);
					yourself.
	
	^ self 
		filesUploadStream: stream 
		fileNamed: fileName 
		options: options
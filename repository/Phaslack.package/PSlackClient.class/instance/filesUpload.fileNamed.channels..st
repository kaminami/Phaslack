api-files
filesUpload: filePath fileNamed: fileName channels: channels
	| options |
	options := Dictionary new
					at: 'channels' put: (',' join: channels);
					yourself.
	
	^ self 
		filesUpload: filePath 
		fileNamed: fileName 
		options: options
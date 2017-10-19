api-files
filesUploadContent: content fileNamed: fileName channels: channels
	| options |
	options := Dictionary new
					at: 'channels' put: (',' join: channels);
					yourself.
	
	^ self 
		filesUploadContent: content 
		fileNamed: fileName 
		options: options
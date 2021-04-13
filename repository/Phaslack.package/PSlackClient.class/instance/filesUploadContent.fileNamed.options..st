api-files
filesUploadContent: content fileNamed: fileName options: options
	| values res |
	values := options copy
						at: 'filename' put: fileName;						
						at: 'content' put: content;
						yourself.
						
	res := self post: 'files.upload' withValues: values.
	^ res
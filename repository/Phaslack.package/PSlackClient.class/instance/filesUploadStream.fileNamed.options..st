api-files
filesUploadStream: stream fileNamed: fileName options: options
	| values res |
	values := options copy
						at: 'token' put: self token;
						at: 'filename' put: fileName;
						yourself.
						
	res := self post: 'files.upload' stream: stream withValues: values.
	^ res
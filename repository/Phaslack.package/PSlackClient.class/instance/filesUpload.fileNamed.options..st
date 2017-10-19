api-files
filesUpload: filePath fileNamed: fileName options: options
	| values res |
	values := options copy
						at: 'token' put: self token;
						at: 'filename' put: fileName;
						yourself.
						
	res := self post: 'files.upload' filePath: filePath withValues: values.
	^ res
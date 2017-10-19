instance creation
url: urlString handler: handlerClassOrObject
	^ self new
		url: urlString;
		handler: handlerClassOrObject;
		yourself
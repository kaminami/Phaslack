initialize-release
initWith: httpResponse
	values := NeoJSONReader fromString: httpResponse contents
testing
isOk
	| val |
	val := self values at: 'ok' ifAbsent: [ false ].
	^ val = true
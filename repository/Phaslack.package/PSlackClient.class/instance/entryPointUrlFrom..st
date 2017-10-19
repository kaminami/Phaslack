http client
entryPointUrlFrom: entryPoint

	| entryPath |
	entryPath := (entryPoint beginsWith: '/')
						ifTrue: [ entryPoint allButFirst ]
						ifFalse: [ entryPoint ].

	^ '<1s>://<2s>/<3s>/<4s>' 
			expandMacrosWith: self protocol
			with: self host
			with: self apiBase
			with: entryPath
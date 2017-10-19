private
handleMethodSelectorOf: eventType
	| body |
	body := (('_' split: eventType) collect: [ :e | e capitalized ]) joinUsing: ''.
	^ ('handle{1}:' format: {body}) asSymbol
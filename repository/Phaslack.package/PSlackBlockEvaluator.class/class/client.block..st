instance creation
client: aClient block: ablock
	^ self new
		client: aClient;
		block: ablock;
		yourself
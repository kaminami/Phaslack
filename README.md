# Phaslack
A tiny Slack client.

# prerequisites
NeoJSON, Zinc-WebSocket

# examples

```smalltalk
| user token client |
user := 'phaslackbot'.
token := 'your_token'. 
"Test token generator: https://api.slack.com/docs/oauth-test-tokens"

client := PSlackClient user: user token: token.
client
    chatPostMessage: (thisContext printString , ' --> ' , DateAndTime now asString)
    channel: 'test'
```

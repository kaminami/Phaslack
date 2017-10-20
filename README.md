# Phaslack
A tiny Slack client for Pharo Smalltalk.

## Supported Smalltalk Version

Pharo Smalltalk 5.0, 6.0

## Installation

```smalltalk
Metacello new
    baseline: 'Phaslack';
    repository: 'github://kaminami/Phaslack/repository';
    load.
```

Local Reporsitory

```smalltalk
| pathToPackageDirectory |"edit to match the path to your chosen package directory"pathToPackageDirectory := './repository/' asFileReference asAbsolute fullName.Metacello new  baseline: 'Phaslack';  repository: 'filetree://', pathToPackageDirectory;  load.
```

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

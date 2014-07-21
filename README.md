# hubot-queue

A Hubot script for queue in brain.

## Getting started

- `npm install --save hubot-queue`
- Add `"hubot-queue"` to `external-scripts.json`

## Usage

- `hubot enqueue <message>` - Enqueues a message
- `hubot dequeue` - Dequeues a message and showes

## Examples

```
Hubot> hubot enqueue hello world
Hubot> hubot enqueue hello hubot
Hubot> hubot show storage
Hubot> { users: { '1': { id: '1', name: 'Shell', room: 'Shell' } },
  _private: {},
  queue: { Shell: [ 'hello world', 'hello hubot' ] } }
Hubot> hubot dequeue
Hubot> hello world
Hubot> hubot dequeue
Hubot> hello hubot
```


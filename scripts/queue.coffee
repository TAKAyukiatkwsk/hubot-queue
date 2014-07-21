module.exports = (robot) ->
  robot.respond /dequeue/i, (msg) ->
    q = robot.brain.data.queue[msg.envelope.user.name].shift()
    msg.send q

  robot.respond /enqueue (.*)/i, (msg) ->
    q = msg.match[1]
    robot.brain.data.queue = {} if !robot.brain.data.queue
    robot.brain.data.queue[msg.envelope.user.name] = [] if !robot.brain.data.queue[msg.envelope.user.name]
    robot.brain.data.queue[msg.envelope.user.name].push q
    robot.brain.save()


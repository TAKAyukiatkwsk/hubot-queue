Fs = require 'fs'
Path = require 'path'

module.exports = (robot) ->
  path = Path.resovle __dirname, 'scripts'
  Fs.exists path, (exists) ->
    if exists
      robot.loadFile path, file for file in Fs.readdirSync(path)

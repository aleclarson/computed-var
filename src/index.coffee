
NamedFunction = require "NamedFunction"
setType = require "setType"

ComputedVar = NamedFunction "ComputedVar", (config) ->

  self =

    get: ->
      config.get()

    set: (newValue) ->
      config.set? newValue
      newValue

  setType self, ComputedVar

module.exports = ComputedVar

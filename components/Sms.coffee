noflo = require 'noflo'

class Sms extends noflo.Component
  constructor: ->
    @inPorts =
      client: new noflo.Port
      send: new noflo.Port
      receive: new noflo.Port
    @outPorts =
      out: new noflo.Port

    @inPorts.client.on 'data', (@client) =>

exports.getComponent = -> new Sms

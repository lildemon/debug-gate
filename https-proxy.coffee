
net = require 'net'
{proxyOrNot} = require './lib/proxy'

`
var http = require('http')
  , req = http.IncomingMessage.prototype;

var _addHeaderLine = req._addHeaderLine;

//Patch ServerRequest to save unmodified copy of headers
req._addHeaderLine = function(field, value) {
  var list = this.complete ?
    (this.allTrailers || (this.allTrailers = [])) :
    (this.allHeaders || (this.allHeaders = []));
  list.push(field + ': ' + value);
  _addHeaderLine.call(this, field, value);
};
`

`function getHostPortFromString( hostString, defaultPort ) {
  var regex_hostport = /^([^:]+)(:([0-9]+))?$/;
  var host = hostString;
  var port = defaultPort;
 
  var result = regex_hostport.exec( hostString );
  if ( result != null ) {
    host = result[1];
    if ( result[2] != null ) {
      port = result[3];
    }
  }
 
  return( [ host, port ] );
}`

module.exports = (request, socketRequest, bodyhead) ->
    #console.log request.allHeaders
    url = request.url
    version = request.httpVersion
    hostport = getHostPortFromString url, 443
    connectHeader = "CONNECT #{hostport[0]}:#{hostport[1]} HTTP/#{version}\r\n"

    proxySocket = new net.Socket
    if (proxyOrNot url) or true
        hostport = ['127.0.0.1', 8118]

    proxySocket.connect parseInt(hostport[1]), hostport[0], ->
        console.log '  < connected to %s/%s', hostport[0], hostport[1]
        console.log( '  > writing head of length %d', bodyhead.length )
        proxySocket.write connectHeader + request.allHeaders.join('\r\n') + '\r\n\r\n'
        proxySocket.write bodyhead
        socketRequest.write "HTTP/#{version} 200 Connection established\r\n\r\n"

    proxySocket.on 'data', (chunk) ->
        socketRequest.write chunk

    proxySocket.on 'end', ->
        socketRequest.end()

    socketRequest.on 'data', (chunk) ->
        proxySocket.write chunk

    socketRequest.on 'end', ->
        proxySocket.end()

    proxySocket.on 'error', (err) ->
        socketRequest.write "HTTP/#{version} 500 Connection error\r\n\r\n"
        socketRequest.end()

    socketRequest.on 'error', (err) ->
        proxySocket.end()







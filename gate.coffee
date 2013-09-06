net = require 'net'
http = require 'http'
{proxyOrNot} = require '../proxy'

exports.middleware = (request, socketRequest, bodyhead) ->
	# Begin http 'CONNECT' protocol
	url = request.url
	version = request.httpVersion
	hostport = getHostPortFromString url, 443

	# Handle errors from client request before connected to the other side
	socketRequest.on 'error', (err) ->
		console.log "HTTP CONNECT Client Request Error: #{err}"

	onSocketConnect = (proxySocket) ->
		proxySocket.write bodyhead
		socketRequest.pipe proxySocket
		proxySocket.pipe socketRequest

		proxySocket.on 'error', (err) ->
			socketRequest.write "HTTP/#{version} 500 Connection error\r\n\r\n"
			socketRequest.end()

		socketRequest.on 'error', (err) ->
			proxySocket.end()


		socketRequest.write "HTTP/#{version} 200 Connection established\r\n\r\n"


	if proxyOrNot url
		# TODO: Use Configure from Database
		req = http.request
			port: 8118
			hostname: '127.0.0.1'
			method: 'CONNECT'
			path: url
		req.end()

		req.on 'connect', (res, proxySocket, head) ->
			socketRequest.write head

			onSocketConnect proxySocket
	else
		proxySocket = net.connect hostport[1], hostport[0], ->
			onSocketConnect proxySocket



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
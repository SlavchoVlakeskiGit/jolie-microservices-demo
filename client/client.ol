
include "../interfaces/Interface.iol"
include "../config/ports.iol"
include "console.iol"

outputPort ServerPort {
    Location: "socket://localhost:" + GATEWAY_PORT
    Protocol: sodep
    Interfaces: PeerToServer
}

main {

    request.message = "Hello from client"

    println@Console("Sending join request to server...")()

    joinNetwork@ServerPort(request)(response)

    println@Console("Response from service: " + response)()
}

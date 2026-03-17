
include "../interfaces/Interface.iol"
include "../config/ports.iol"
include "console.iol"

outputPort JoinNetworkRequest{
    Location: "socket://localhost:" + GATEWAY_PORT
    Protocol: sodep
    Interfaces: PeerToServer
}

inputPort PRequestUpload { 
    Location: "socket://localhost:" + PEER_PORT
    Protocol: sodep
    Interfaces: PeerToPeer
}

outputPort PRequestDownload {
    Interfaces: PeerToPeer
}

main{

    downloadString(fileName)(result){
        result = "Jeer peer responding. You asked for file: " + fileName
    }
    |
    root.message = "Hello gateway, this is a Jeer peer"

    println@Console("Registering peer with gateway...")()

    joinNetwork@JoinNetworkRequest(root)(response)

    println@Console(response)()
}

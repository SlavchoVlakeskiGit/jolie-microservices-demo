
execution{ concurrent }

include "../interfaces/Interface.iol"
include "../config/ports.iol"

inputPort SendMessageService {
    Location: "socket://localhost:" + GATEWAY_PORT
    Protocol: sodep
    Interfaces: PeerToServer
}

main {
    joinNetwork(request)(response){
        response = "Benvenuto Jeer! Gateway received your request."
    }
}

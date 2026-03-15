execution{ concurrent }
include "Interface.iol"
/*
Creo un server in ascolto su una inputPort definita di seguito
*/
inputPort SendMessageService {
Location: "socket://localhost:9000"
Protocol: sodep
Interfaces: PeerToServer 
}

main{
	joinNetwork(portParameter)(result){
		result = "Benvenuto Jeer sulla porta: "+ portParameter.porta+" Hai inviato: "+portParameter.message
	}
}
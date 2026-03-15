include "Interface.iol"
include "console.iol"

//execution{ sequential }

outputPort JoinNetworkRequest{
	Location: "socket://localhost:9000"
	Protocol: sodep
	Interfaces: PeerToServer
}

outputPort PRequestDownload {
	Interfaces: PeerToPeer
}

inputPort PRequestUpload { 
	Location : "socket://localhost:9001"
	Protocol: sodep
	Interfaces: PeerToPeer
}

main{
	downloadString(fileName)(result){
		result = "Sono il Jeer su: "+PRequestUpload.Location +"Mi hai chiesto il file: "+fileName+" Eccolo!"
	}
	|
	while( command != "close" ){
		println@Console( "Inserisci numero porta da usare:" )();
		println@Console( "Inserisci 'close' per abbandonare" )();
	  	print@Console( "> " )();
	  	registerForInput@Console()();
	  	in( command );
	  	println@Console( "Received command: " + "\"" + command + "\"" )();
	  	if(command != "close"){
		  	root.porta = int(command);
		  	root.message = "Hi! I'm reachable on port: "+root.porta;
			joinNetwork@JoinNetworkRequest(root)(result);
			println@Console(result)();
			//DOPO RICEZIONE PORTA LIBERA DA SERVIZIO JOIN APPOSITO O DA SERVER
			//SETTO LA MIA PORTA DI JEER PER RICHIESTA UPLOAD
		  	global.inputPorts.PRequestUpload.Location = "socket://localhost:"+command;
		  	global.inputPorts.PRequestUpload.Protocol = "sodep";
		  	println@Console( "Settata porta per comunicazione. Inserire 'saluta' per chiedere file: " )();
		  	registerForInput@Console()();
	  		in( command );
	  		if(command == "saluta"){
		  		println@Console( "Inserisci numero porta da salutare:" )();
		  		registerForInput@Console()();
		  		in( command );
		  		PRequestDownload.Location = "socket://localhost:"+command;
		  		PRequestDownload.Protocol = "sodep";
		  		println@Console( "Inserisci nome file da richiedere:" )();
		  		registerForInput@Console()();
		  		in( command );
		  		fileToDownload = command;
		  		downloadString@PRequestDownload(fileToDownload)(result);
		  		println@Console(result)()
	  		}
	  		//command = "close";
		}
		//command = "close";
	}
	/*
	downloadString(fileName)(result){
		result = "Sono il Jeer su: "+PRequestUpload.Location +"Mi hai chiesto il file: "+fileName+" Eccolo!"
	}*/
	/*
	root.porta = 9001;
	root.message = "Hi! I'm reachable on port: "+root.porta;
	joinNetwork@JoinNetworkRequest(root)(result);
	println@Console(result)()*/

}
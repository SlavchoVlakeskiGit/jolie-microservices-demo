type PortSetting: void{
	.porta: int
	.message: string
}
interface PeerToPeer {
 // upload, recupero
 //	dynamic binding: upload, download unica operazione?
  //OneWay: upload(file)
  //RequestResponse: download(string)(file)
  RequestResponse: downloadString(string)(string)
}

interface ServerToPeer {
	//RequestResponse: joinNetwork(portsetting)(string)
}

interface PeerToServer {
  // join, leave, indexUpdate, regCont, ricerca
  //OneWay: regCont(lista)
  //RequestResponse: search(string)(listaID)
  RequestResponse: leaveNetwork(void)(string)
  RequestResponse: indexUpdate(string)(string)
  RequestResponse: joinNetwork(PortSetting)(string)
}
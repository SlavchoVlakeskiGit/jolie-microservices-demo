
interface PeerToServer {
    RequestResponse:
        joinNetwork( void )( string )
}

interface PeerToPeer {
    RequestResponse:
        downloadString( string )( string )
}

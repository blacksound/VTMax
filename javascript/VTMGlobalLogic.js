outlets = 1;
var lydserverProxyOutlet = 0;

function client( clientName ) {
	var clientSetupCanvas = this.patcher.getnamed("clientSetupCanvas");
	var pat = clientSetupCanvas.subpatcher();
	var obj;
	clearClientSetup();
	obj = pat.newdefault(0,0,
		clientName + ".setup"
	);
	//set scripting name for the new object
	obj.varname = "clientSetup";
}

//like killing a fly with a cannon, behold:
function clearClientSetup() {
	var clientSetupCanvas = this.patcher.getnamed("clientSetupCanvas");
	var pat = clientSetupCanvas.subpatcher();	
	var obj = pat.firstobject;
	var nextObj;

	while(obj != null) {
		nextObj = obj.nextobject;
		pat.remove( obj );
		obj = nextObj;
	}
}

function networkConnected( isConnected, clientName, receivePort, ip ) {
	var mDNSCanvas = this.patcher.getnamed("mDNSServerice_canvas");
	var pat = mDNSCanvas.subpatcher();
	var obj;
	if(isConnected) {
		obj = pat.getnamed("mDNSService");
		if(obj) {
			removemDNSService();
		} else {
			obj = pat.newdefault(0,0,
				"zero.announce",
				"@type", "_osc._udp",
				"@name", "VTMax",
				"@port", receivePort
			);
			obj.varname = "mDNSService";
			initLydserverProxy( clientName, receivePort, ip );						
		}
	} else {
		removemDNSService();
	}
} 

function removemDNSService() {
	var mDNSCanvas = this.patcher.getnamed("mDNSServerice_canvas");
	var pat = mDNSCanvas.subpatcher();	
	var obj;
	obj = pat.getnamed("mDNSService");
	pat.remove(obj);
}

function initLydserverProxy(clientName, receivePort, ip) {
	outlet(lydserverProxyOutlet,
		"client_ip", ip
	);
	outlet(lydserverProxyOutlet,
		"client_port", receivePort
	);
	outlet(lydserverProxyOutlet,
		"client_name", clientName
	);		
}
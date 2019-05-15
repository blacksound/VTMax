outlets = 1;
var lydserverOutlet = 0;

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
	registerClientWithLydserver( clientName );
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

function registerClientWithLydserver( clientName ) {
	outlet(lydserverOutlet, "registerClient", clientName );
}

function unregisterClientWithLydserver( clientName ) {
	outlet(lydserverOutlet, "unregisterClient", clientName );
}

function networkConnected( isConnected, clientName, receivePort ) {
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
				"@name", "VTMax:" + clientName,
				"@port", receivePort
			);
			obj.varname = "mDNSService";			
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
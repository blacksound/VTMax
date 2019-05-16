outlets = 1;
var lydserverProxyOutlet = 0;
var setupFileSuffix = "vtmaxsetup"


function setup(clientName) {
	if(clientName != "<none>") {
		var setupPatch;
		var wasBuilt;
		//Remove the alredy existing setup patch.
		//This may be cumbersome if you reload a big
		//setup patch.
		//A suggestion for the future is to detect if the same
		//setup is being loaded, by using the getNameOfSetupPatch function.
		removeSetupPatch();
		
		wasBuilt = makeSetupPatch( clientName );
		if(wasBuilt) {
			post("Loaded setup patch: " + clientName + "." + setupFileSuffix)
		} else {
			error(
				"Failed to load setup patch: " + clientName + 
				"\nThe patch name should end with ." + setupFileSuffix +
				"and be in the Max file path.\n"
			);
		}
	} else {
		removeSetupPatch();
	}
}

function getSetupPatch() {
	var canvas = this.patcher.getnamed("setupCanvas");
	var pat = canvas.subpatcher();
	var obj = pat.getnamed("setup");
	if(obj) {
		obj = obj.subpatcher();
	}
	return obj;
}

function getNameOfSetupPatch() {
	var patch = getSetupPatch();
	var setupName;
	if(patch) {
		setupName = patch.name;
		setupName = setupName.slice(0, -11); //remove the suffix '.vtmaxsetup'
	}
	return setupName;
}

function makeSetupPatch( clientName ) {
	var clientSetupCanvas = this.patcher.getnamed("setupCanvas");
	var pat = clientSetupCanvas.subpatcher();
	var obj;
	var wasBuilt = false;
	obj = pat.newdefault(0,0,
		clientName + "." + setupFileSuffix
	);
	//set scripting name for the new object
	obj.varname = "setup";
	
	try{
		//this is one way to generate a Javasscript
		//error if the patch file is not found.
		//We do this to test if the patch was loaded,
		//i.e. the setup patch exists.
		post(obj.subpatcher().name); post()
		wasBuilt = true;
	}
	catch(err) {
		wasBuilt = false;
	}
	return wasBuilt;
}

function openSetupPatch() {
	var setupCanvasPatcher = this.patcher.getnamed("setupCanvas").subpatcher();
	var setupPatch = setupCanvasPatcher.getnamed("setup");
	if(setupPatch) {
		setupPatch.message( "front"	)	
	} else {
		error("no setup loaded!\n");
	}
}

//Remove all patchers in the canvas patch, just in case
//some old setups are left untracked.
//Like killing a fly with a cannon, behold:
function removeSetupPatch() {
	var clientSetupCanvas = this.patcher.getnamed("setupCanvas");
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
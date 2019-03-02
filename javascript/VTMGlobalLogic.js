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

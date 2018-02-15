

function client( clientName ) {
	var clientSetupCanvas = this.patcher.getnamed("clientSetupCanvas");
	var pat = clientSetupCanvas.subpatcher();
	var obj;
	clearClientSetup();
	obj = pat.newdefault(0,0,
		clientName + ".setup"
	);
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
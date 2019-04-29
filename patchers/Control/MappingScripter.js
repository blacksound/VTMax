outlets = 3;
var mappingActive = false;
var messageOutlet = 2;
var sceneName = jsarguments[1];
var collName = sceneName + ".mappings";
var mappingDict = new Dict(sceneName + "MappingsDict");
var mappingSettingsDict = new Dict(sceneName + "MappingSettingsDict");
var pageName;
var pageNameOutlet = 1;
var scalarMappings;

function mapToPage()
{
	var keysToMap;
	if(arguments[0] == null)
	{
		post("ControlMappingScripter: Need page name for mapping" + sceneName);
	} else {
		//var mappingPage = argument[1];
		//var destPageNumTest = new RegExp("(.+)\\.(\\d+)").exec(destinationPage);
		//destinationPage = destPageNumTest[1];
		//destinationPageNumber = destPageNumTest[2];

		if(mappingActive) {
			deactivateMapping();
		}
		pageName = arguments[0];

		resetPage(pageName);

		mappingDict.clear();
		mappingDict.set('__bogus__', -1); //this hack fixes a bug where mappings with one element would fail.
		mappingDict.pull_from_coll(collName);


		keysToMap = mappingDict.getkeys();
		scalarMappings = new Array();
		if(keysToMap == "__bogus__") {
		} else {
			var i;
			var keysLength = keysToMap.length - 1;
			keysToMap.shift(); //hack as mentioned above
			for(i = 0; i < keysLength; i++)
			{
				var paramName = keysToMap[i];
				var ctrlParam, settings;
				var controlData = mappingDict.get(paramName);
				post("DATA:" + controlData + "type: " + (typeof controlData) + "\n");
				//if the mapping has no settings it is returned as string
				if(typeof controlData == "string")
				{
				//	post("NO SETTINGS\n");
					ctrlParam = controlData;
					settings = null;
				} else if( typeof controlData == "object") // indicates that there are settings
				{
				//	post("HAS SETTINGS\n");
					ctrlParam = controlData[0];
					settings = controlData.slice(1);
				}
				//post("TO:" + param + "\n");
				//post("SETTINGS:" + settings + "\n");
				//post("First: " + ctrlParam[0]);

				//check if the ctrlParam is a button type
				var buttonKey;
				var moreStuff;

				switch(ctrlParam) {
					case "toggle":
						//parameter name, buttonKey
						buttonKey = settings[0];
						moreStuff = settings.slice(1);
						createToggleButtonMapping(paramName, buttonKey);
					break;
					case "momentary":
						//parameterName, buttonKey1, [[buttonValue1], [buttonKey2, buttonValue2], [...], ...]
						buttonKey = settings[0];
						moreStuff = settings.slice(1);
						createMomentaryButtonMapping(paramName, buttonKey, moreStuff);
					break;
					case "radio":
						//parameterName, buttonKey1, buttonValue1, [[buttonKey2, buttonValue2], [...], ...]
						createRadioButtonsMapping(paramName, settings)
					break;
					default:
						//Check the ctrlParam is alocal or global path
						if(ctrlParam[0] != "/")
						{ //it is a local path
							ctrlParam = "/control/" + pageName + "/" + ctrlParam;
						}
						//Is it a remote path?
						if(paramName[0] == "@") {
							createRemotePath(ctrlParam, paramName, settings);
						} else {
							createMapping( ctrlParam, paramName, settings );
						}
						scalarMappings.push({"ctrlParam": ctrlParam, "paramName": paramName});

				}
			}

			mappingActive = true;
			outlet(1, "mapped", pageName, sceneName);
		}
	}
}

function resetPage(pageNameToReset)
{
	outlet(messageOutlet, "address", "/control/" + pageNameToReset);
	outlet(messageOutlet, "resetPage");
}

function deactivateMapping()
{
	clearCanvas();
	mappingActive = false;
	outlet(1, "unmapped", pageName, sceneName);
}

function createToggleButtonMapping(paramName, buttonKey) {
//	post("Toggle button mapping:\n");
//	post("    param: " + paramName + "\n");
//	post("    buttonKey: " + buttonKey + "\n");
	var canvas = this.patcher.getnamed("mappingCanvas").subpatcher();
	canvas.newdefault(
			0, 0, "VTMToggleButtonMapping",
			"/" + sceneName + "/" + paramName,
			"/control/" + pageName + "/button." + buttonKey
		);
}

function createMomentaryButtonMapping(paramName, buttonKey, moreStuff) {
//	post("Momentary button mapping:\n");
//	post("    paramPath: " + paramName + "\n");
//	post("    settings: " + buttonKey + "\n");
//	post("    moreStuff: " + moreStuff + "\n");
//	post("    size: " + moreStuff.length + "\n");
	var canvas = this.patcher.getnamed("mappingCanvas").subpatcher();
	var i;
	switch(moreStuff.length)
	{
		case 0:
			canvas.newdefault(
				0, 0, "VTMMomentaryButtonMapping",
				"/" + sceneName + "/" + paramName,
				"/control/" + pageName + "/button." + buttonKey
			);
		break;
		case 1:
			canvas.newdefault(
				0, 0, "VTMMomentaryButtonMapping",
				"/" + sceneName + "/" + paramName,
				"/control/" + pageName + "/button." + buttonKey,
				moreStuff[0]
			);
		break;
		default:
			var rray = [buttonKey].concat(moreStuff);
			for(i = 0; i < rray.length; i = i + 2) {
				createMomentaryButtonMapping(paramName, rray[i], [rray[i+1]]);
			}
	}
}

function createRadioButtonsMapping(paramName, buttonKeyVals) {
	var canvas = this.patcher.getnamed("mappingCanvas").subpatcher();
	var i;
//	post("Radiobutton mapping:\n");
//	post("\tsettings: " + buttonKeyVals + "\n");
	canvas.newdefault(
		0, 0, "VTMRadioButtonsMapping",
		"/control/" + pageName,
		paramName,
		buttonKeyVals
	);

}

function createMapping(ctrlParam, param, settings)
{
	var canvas = this.patcher.getnamed("mappingCanvas").subpatcher();
	if(param[0] == "/") {
		param = param;
	} else {
		param = "/" + sceneName + "/" + param;
	}

	var newObj;//for temp storing new objects

	var isDb = RegExp("^.+\/db$");
	//make the mapping from the parameter to the control parameter
	if(settings != null)
	{
		newObj = canvas.newdefault(
			0, 0, "VTMControlMapUnit", param, ctrlParam, settings
		);
	} else {
		if(isDb.exec(param))
		{
			//post("Makeing logarithm " + param + " to " + ctrlParam); post();
			newObj = canvas.newdefault(
				0, 0, "VTMControlMapUnit", param, ctrlParam, "@function", "logarithm", "base", 10
			);
		} else {
			newObj = canvas.newdefault(
				0, 0, "VTMControlMapUnit", param, ctrlParam
			);
		}
	}

	//set the varname for the new j.map box
	newObj.varname = param + "=>" + ctrlParam;
}

function createRemotePath(ctrlParam, param, settings) {
	var newObj;//for temp storing new objects
	var canvas = this.patcher.getnamed("mappingCanvas").subpatcher();
//	post("ctrl: " + ctrlParam + "\n");
//	post("param: " + param + "\n");
//	post("settings: " + settings + "\n");
	var addr = param.split(":");
	var ip = addr[0].substring(1);
	addr = addr[1].split("/");
	var port = addr[0];
	addr.shift();
	param = "/" + addr.join("/");
	if(settings != null)
	{
		newObj = canvas.newdefault(
			0, 0, "VTMRemoteControlMapUnit", ip, port, param, ctrlParam, settings
		);
	} else {
		newObj = canvas.newdefault(
				0, 0, "VTMRemoteControlMapUnit", ip, port, param, ctrlParam
		);
	}

}


function clearCanvas(number)
{
	var canvas = this.patcher.getnamed("mappingCanvas").subpatcher();
	canvas.apply(function(item) {this.patcher.remove(item);});
}

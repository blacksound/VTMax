var g = new Global("vt_max");
var scenesPath;
outlets = 1;


var shellMessageOutlet = 0;

// get the ref from the scenes dictionary
var scenes = new Dict("scenes");


//This find the NakedScriptCanvas patcher in the root VTMGlobal.module window
//There may be a better way to do this.
//If the position in the patcher hierarchy should change sometime, this is a
//line that may fail.
var coreCanvas = this.patcher.parentpatcher.parentpatcher.getnamed("sceneCores").subpatcher().getnamed("coreCanvas");
var coreCanvasPatcher = coreCanvas.subpatcher();

function sceneExists(sceneName) {
	var result = false;
	var names = scenes.getkeys();
	for(i = 0; i < names.length; i = i + 1) {
		if(names[i] == sceneName) {
			result = true;
			break;
		}
	};
	return result;
}

function escapeSpaces( str ) {
	var splitStr = str.split(" ");
	var newStr = splitStr.join("\\\\ ");
	return newStr;
}

function newScene( scriptFolder, scenePath ) {
	//I hate Max.
	scenePath = escapeSpaces(scenePath);

	//Runs the makeNewScene bash script which makes a new folder
	//and copies the templates to the new scene folder.
	//Please read first and last comment in this method for a better
	//explanation why this is done.
	outlet(
		shellMessageOutlet,
		"cd " + escapeSpaces(scriptFolder) + "\\; ./makeNewScene " + scenePath
	);
	//I hate Max.
}


//assumes the the scene exists
//return false if not.
function getBooleanValueForScene(sceneName, key) {
	var result = false;
	var scene;
	scene = scenes.get(sceneName);
	if(scene != null) {
		result = scene.get(key);
		if(result == 1) {
			result = true;
		} else {
			result = false;
		}
	}
	return result;
}

function sceneIsOpen(sceneName) {
	return getBooleanValueForScene(sceneName, "open");
}

function sceneIsActive(sceneName) {
	return getBooleanValueForScene(sceneName, "active");
}

function sceneIsMapped(sceneName) {
	return getBooleanValueForScene(sceneName, "mapped");
}

function openScene(sceneName) {
	// does the scene exist?
	if(sceneExists(sceneName)) {
		post("opening scene: " + sceneName); post();
		if(sceneIsOpen(sceneName)) {
			post("Scene already open: " + sceneName); post();
		} else {
			makeSceneCore( sceneName );
			makeSceneView( sceneName );
			showSceneView( sceneName );
		}
	} else {
		post("scene does not exist: " + sceneName); post();
	}
}

function closeScene( sceneName ) {
	// does the scene exist?
	if(sceneExists(sceneName)) {
		deleteSceneCore( sceneName );
		hideSceneView( sceneName );
		deleteSceneView( sceneName );
	} else {
		post("scene does not exist: " + sceneName); post();
	}
}

function sceneCoreExists(sceneName) {
	var result = false;
	var obj = coreCanvasPatcher.firstobject;
	while(obj != null) {
		if(obj.varname == sceneName) {
			result = true;
			break;
		}
		obj = obj.nextobject;
	}
	return result;
}

function deleteSceneCore( sceneName ) {
	if(sceneCoreExists( sceneName ) ) {
		coreCanvasPatcher.remove(
			coreCanvasPatcher.getnamed(sceneName)
		);
	}
}

function registerOpenedScene(sceneName) {
	scenes.setparse(
		sceneName,
		'{"mapped": 0, "active": 0}'
	);
	makeSceneCore(sceneName);
	post("Making scene core for " + sceneName + "\n");
}

function registerClosedScene(sceneName) {
	scenes.remove(sceneName);
	deleteSceneCore(sceneName);
}

//if the core already exists it does nothing
function makeSceneCore( sceneName ) {
	var newobj;
	post("Making scene core for " + sceneName + "\n");
	if(!sceneCoreExists( sceneName ) ) {
		newobj = coreCanvasPatcher.newdefault(
			0, 0,
			"SceneCore.model",
			sceneName
		);
		newobj.varname = sceneName;
	} else {
		post("Scene core '" + sceneName + "' already exists\n");
	}
}

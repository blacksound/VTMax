var g = new Global("vt_max");
var scenesPath;
outlets = 2;


var shellMessageOutlet = 0;
var scenesFoundOutlet = 1;

var scenes = new Dict("scenes");

var coreCanvas = this.patcher.getnamed("coreCanvas");
var coreCanvasPatcher = coreCanvas.subpatcher();

var viewCanvas = this.patcher.getnamed("viewCanvas");
var viewCanvasPatcher = viewCanvas.subpatcher();

function findScenes(path) {
	var scenesDict = new Dict("scenes");
	var sceneFolder;
	scenesPath = path;
	sceneFolder = new Folder(scenesPath);	
	sceneFolder.typelist = ["folder"];
	
	sceneFolder.next();
	while(!sceneFolder.end) {
		if(sceneFolder.filename != "_template") {
			outlet(scenesFoundOutlet, sceneFolder.filename);
			scenesDict.setparse(
				sceneFolder.filename, 
				'{"open": 0, "mapped": 0, "active": 0}'
			);
		}
		sceneFolder.next();
	}
	messnamed("scenesFound", "bang");
	
}

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

function newScene( scriptFolder, sceneName ) {
	//I hate Max.
	outlet(0, "cd " + escapeSpaces(scriptFolder) + "\\; ./makeNewScene " + escapeSpaces(sceneName));
	findScenes( scenesPath );
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

function sceneViewExists(sceneName) {
	var result = false;
	var obj = viewCanvasPatcher.firstobject;
	while(obj != null) {
		if(obj.varname == sceneName) {
			result = true;
			break;
		}
		obj = obj.nextobject;
	}
	return result;
}


//if the core already exists it does nothing
function makeSceneCore( sceneName ) {
	var newobj;
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

function deleteSceneCore( sceneName ) {
	if(sceneCoreExists( sceneName ) ) {
		coreCanvasPatcher.remove(
			coreCanvasPatcher.getnamed(sceneName)
		);
	}
}

function makeSceneView( sceneName ) {
	var obj;
	obj = viewCanvasPatcher.getnamed( sceneName );
	//check if the scene view already exists
	if(!sceneViewExists( sceneName )) {
		obj = viewCanvasPatcher.newdefault(
			0, 0,
			sceneName
		);
		obj.varname = sceneName;	
	}
}

function deleteSceneView( sceneName ) {
	var obj;
	obj = viewCanvasPatcher.getnamed( sceneName );
	viewCanvasPatcher.remove(
		viewCanvasPatcher.getnamed( sceneName )
	);
}

function showSceneView( sceneName ) {
	var obj;
	obj = viewCanvasPatcher.getnamed( sceneName );
	if(obj != null) {
		obj = obj.subpatcher();
		obj.front();
	} else {
		post("no scene view: " + sceneName + "\n");
	}	
}

function hideSceneView( sceneName ) {
	var obj;
	obj = viewCanvasPatcher.getnamed( sceneName );
	if(obj != null) {
		obj = obj.subpatcher();
		obj.wclose();
	} else {
		post("no scene view: " + sceneName + "\n");
	}	
}
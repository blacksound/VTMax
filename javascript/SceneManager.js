

var scenes = new Dict("scenes");
var scriptCanvas = this.patcher.getnamed("scriptCanvas");
var scriptCanvasPatcher = scriptCanvas.subpatcher();

function sceneExists(sceneName) {
	var result = false;
	var names = scenes.getkeys();
	for(i = 0; i < names.length; i = i + 1) {
		post("checking: " + names[i]); post();
		if(names[i] == sceneName) {
			result = true;
			break;
		}		
	};
	return result;
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
			post("Scene not open yet: " + sceneName); post();
			makeSceneCore( sceneName );
			makeSceneView( sceneName );
		}
	} else {
		post("scene does not exist: " + sceneName); post();
	}
}

function sceneCoreExists(sceneName) {
	var result = false;
	var obj = scriptCanvasPatcher.firstobject;
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
		newobj = scriptCanvasPatcher.newdefault(
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
		scriptCanvasPatcher.remove(
			scriptCanvasPatcher.getnamed(sceneName)
		);
	}
}

function makeSceneView( sceneName ) {
	var pat, obj;
	pat = this.patcher.getnamed("viewCanvas").subpatcher();
	obj = pat.newdefault(
		0, 0,
		"SceneCore.view",
		sceneName
	);
	obj.varname = sceneName;
}

function deleteSceneView( sceneName ) {
	var pat, obj;
	pat = this.patcher.getnamed("viewCanvas").subpatcher();
	pat.remove(
		pat.getnamed( sceneName )
	);
}

function showSceneView( sceneName ) {
	var pat, obj;
	pat = this.patcher.getnamed("viewCanvas").subpatcher();
	obj = pat.getnamed( sceneName );
	if(obj != null) {
		obj.bringtofront();
	} else {
		post("no scene view: " + sceneName + "\n");
	}
	
}
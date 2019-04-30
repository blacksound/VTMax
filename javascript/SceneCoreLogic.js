outlets = 3;
autowatch = 1;

var mainOutlet = 0;
var jsendOutlet = 1;
var addressOutlet = 2;
var sceneName;

function bindToAddress(sceneNameArg) {
	sceneName = sceneNameArg;
	//if (sceneName) {
	outlet(addressOutlet, "model:address",  "/" + sceneName);
	//} else {
	//	post("initialize first!");
	//}
}

function isOpenedInScenePatch() {
	var result = false;
	var parent = this.patcher.parentpatcher;
	if(parent) {
		result = true;
	}
	return result;
}

function getScenePatcherFilepath() {
	if(isOpenedInScenePatch()) {
		var path = this.patcher.parentpatcher.filepath;
		outlet(mainOutlet, "scenePath", path);
		return path;
	} else {
		post("not opened in scene patch\n");
		return null;
	}
}

function sceneClosed() {
	outlet(jsendOutlet,
		"/global/sceneManager/sceneClosed",
		sceneName
	);
}	

function sceneOpened() {
	outlet(jsendOutlet,
		"/global/sceneManager/sceneOpened",
		sceneName
	);
}	

function initSceneCore( sceneNameArg ) {
	if( isOpenedInScenePatch() ) {
		sceneName = sceneNameArg;
		makeViewBpatcher( sceneName );
		sceneOpened();
		bindToAddress(sceneName);
	} else {
		//this should never happen
		post("trying to initSceneCore without being in a scene patch\n");
	}
}

function makeViewBpatcher( sceneName ) {
	if(this.patcher.getnamed("view")) {
		deleteViewBpatcher();
	}
	var viewPatcher;	
	viewPatcher = this.patcher.newdefault(0,0,"bpatcher",
		"@name", "SceneCore.view",
		"@presentation", 1,
		"@presentation_rect", 0.0, 0.0, 153, 725,
		"@args", sceneName
	);
	viewPatcher.varname = "view";	
}

function deleteViewBpatcher() {
	var viewPatcher;
	viewPatcher = this.patcher.getnamed("view");
	if(viewPatcher) {
		this.patcher.remove(viewPatcher);
	}
}
var g = new Global("vt_max");

outlets = 2;

function findScenes(path) {
	var scenesDict = new Dict("VTM_scenes");
	var sceneFolder;
	g.scenesFolder = path;
	sceneFolder = new Folder(path);
	post("the path: " + sceneFolder + "\n");
//	post(sceneFolder.count); post();
//	post(sceneFolder.pathname); post();
//	post(sceneFolder.typelist); post();
	post(sceneFolder.typelist); post();
	
	sceneFolder.typelist = ["folder"];
	
	sceneFolder.next();
	while(!sceneFolder.end) {
		if(sceneFolder.filename != "_template") {
			post("aa: " + sceneFolder.filename);
			outlet(1, sceneFolder.filename);
			scenesDict.setparse(
				sceneFolder.filename, 
				'{"open": 0, "mapped": 0, "active": 0}'
			);
		}
		sceneFolder.next();
	}
	outlet(0, "bang");
}
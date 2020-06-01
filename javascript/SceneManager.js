var g = new Global("vt_max");
var scenesPath;
outlets = 1;
autowatch = 1;

var coreCount;

var shellMessageOutlet = 0;

// get the ref from the scenes dictionary
var scenes = new Dict("VTM_scenes");
// get the ref from the sceneSet dictionary
var sceneSet = new Dict("VTM_sceneSet");

//This find the NakedScriptCanvas patcher in the root VTMGlobal.module window
//There may be a better way to do this.
//If the position in the patcher hierarchy should change sometime, this is a
//line that may fail.
var coreCanvas = this.patcher.parentpatcher.parentpatcher
  .getnamed("sceneCores")
  .subpatcher()
  .getnamed("coreCanvas");
var coreCanvasPatcher = coreCanvas.subpatcher();

//used in: newScene
function escapeSpaces(str) {
  var splitStr = str.split(" ");
  var newStr = splitStr.join("\\\\ ");
  return newStr;
}

//used in: deleteSceneCore, makeSceneCore
function sceneCoreExists(sceneName) {
  var result = false;
  var obj = coreCanvasPatcher.firstobject;
  while (obj != null) {
    if (obj.varname == sceneName) {
      result = true;
      break;
    }
    obj = obj.nextobject;
  }
  return result;
}

//used in: registerClosedScene
function deleteSceneCore(sceneName) {
  if (sceneCoreExists(sceneName)) {
    coreCanvasPatcher.remove(coreCanvasPatcher.getnamed(sceneName));
    rearrangePatchers();
  }
}

//used in: registerOpenedScene
//if the core already exists it does nothing
function makeSceneCore(sceneName) {
  var newobj;
  post("Making scene core for " + sceneName + "\n");
  if (!sceneCoreExists(sceneName)) {
    countCores();
    newobj = coreCanvasPatcher.newdefault(
      Math.floor(coreCount / 13) * 107,
      (coreCount % 13) * 37,
      "SceneCore.model",
      sceneName
    );
    newobj.varname = sceneName;
    coreCanvasPatcher.message("script", "size", sceneName, 105, 35);
    rearrangePatchers();
  } else {
    post("Scene core '" + sceneName + "' already exists\n");
  }
}

function registerOpenedScene(sceneName) {
  scenes.setparse(sceneName, '{"mapped": 0, "active": 0}');
  makeSceneCore(sceneName);
  //post("Making scene core for " + sceneName + "\n");
}

function registerClosedScene(sceneName) {
  scenes.remove(sceneName);
  //sceneSet.remove(sceneName);
  sceneSet.remove("scenes::"+sceneName);
  deleteSceneCore(sceneName);
}

function registerScenePath(sceneName, path) {
  //sceneSet.setparse(sceneName, '{"path": ' + '"' + path + '"}');
  sceneSet.replace("scenes::"+sceneName+"::path", path);
}

function newScene(scriptFolder, scenePath) {
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

function countCores() {
  coreCount = 0;
  coreCanvasPatcher.applyif(
    function() {
      coreCount += 1;
    },
    function(obj) {
      var result;
      result = obj.maxclass == "patcher";
      return result;
    }
  );
}

function rearrangePatchers() {
  coreCount = 0;
  var coreList = [];
  coreCanvasPatcher.applyif(
    function(obj) {
      coreList.push(obj.varname);
    },
    function(obj) {
      var result;
      result = obj.maxclass == "patcher";
      return result;
    }
  );
  coreList.sort();
  coreList.forEach(function(sc) {
    coreCanvasPatcher.message(
      "script",
      "move",
      sc,
      Math.floor(coreCount / 13) * 107,
      (coreCount % 13) * 37
    );
    coreCount += 1;
  });
}

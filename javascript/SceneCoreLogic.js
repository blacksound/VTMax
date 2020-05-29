outlets = 3;
autowatch = 1;

var deferlowOutlet = 0;
var jsendOutlet = 1;
var addressOutlet = 2;
var sceneName;
var initialized = false;
var VTM_scenes = new Dict("VTM_scenes");
var sceneIsDuplicate = false;

function bindToAddress(sceneNameArg) {
  sceneName = sceneNameArg;
  outlet(addressOutlet, "model:address", "/" + sceneName);
}

function isOpenedInScenePatch() {
  var result = false;
  var parent = this.patcher.parentpatcher;
  if (parent) {
    result = true;
  }
  return result;
}

function sendPathToCore() {
  if (isOpenedInScenePatch()) {
    var path = this.patcher.parentpatcher.filepath;
    path = path.slice(0, -7); // removing ".maxpat"
    path += ".core.maxpat";
    outlet(deferlowOutlet, "/" + sceneName + "/pathToCore", path);
    return path;
  } else {
    post("not opened in scene patch\n");
    return null;
  }
}

function sendPathToCue() {
  if (isOpenedInScenePatch()) {
    var path = this.patcher.parentpatcher.filepath;
    path = path.slice(0, -7); // removing ".maxpat" /
    path += ".cue.txt";
    outlet(deferlowOutlet, "/" + sceneName + "/pathToCue", path);
    return path;
  } else {
    post("not opened in scene patch\n");
    return null;
  }
}

function sendPathToMappings() {
  if (isOpenedInScenePatch()) {
    var path = this.patcher.parentpatcher.filepath;
    path = path.slice(0, -7); // removing ".maxpat" /
    path += ".mappings";
    outlet(deferlowOutlet, "/" + sceneName + "/pathToMappings", path);
    return path;
  } else {
    post("not opened in scene patch\n");
    return null;
  }
}

function sendScenePathToSceneManager() {
  if (isOpenedInScenePatch()) {
    var path = this.patcher.parentpatcher.filepath;
    outlet(deferlowOutlet, "/global/sceneManager/scenePath", sceneName, path);
    return path;
  } else {
    post("not opened in scene patch\n");
    return null;
  }
}

function deleteViewBpatcher() {
  var viewPatcher;
  viewPatcher = this.patcher.getnamed("view");
  if (viewPatcher) {
    this.patcher.remove(viewPatcher);
  }
}

function makeViewBpatcher(sceneName) {
  if (this.patcher.getnamed("view")) {
    deleteViewBpatcher();
  }
  var viewPatcher;
  viewPatcher = this.patcher.newdefault(
    0,
    0,
    "bpatcher",
    "@name",
    "SceneCore.view",
    "@presentation",
    1,
    "@presentation_rect",
    0.0,
    0.0,
    153,
    725,
    "@args",
    sceneName
  );
  viewPatcher.varname = "view";
}

function sceneClosed() {
  if (!sceneIsDuplicate) {
    outlet(jsendOutlet, "/global/sceneManager/sceneClosed", sceneName);
  }
}

function sceneOpened() {
  outlet(jsendOutlet, "/global/sceneManager/sceneOpened", sceneName);
}

function initSceneCore(sceneNameArg) {
  if (VTM_scenes.contains(sceneNameArg) != 1) {
    if (isOpenedInScenePatch() && !initialized) {
      sceneName = sceneNameArg;
      makeViewBpatcher(sceneName);
      sceneOpened();
      bindToAddress(sceneName);
      sendPathToCore();
      sendPathToCue();
      sendPathToMappings();
      sendScenePathToSceneManager();
      initialized = true;
    } else {
      //this should never happen
      post(
        "Already initialized, or trying to initialize without being in a scene patch\n"
      );
    }
  } else {
    post("Oops, duplicate scene, closing it now...\n");
    sceneIsDuplicate = true;
    this.patcher.parentpatcher.message("wclose");
  }
}

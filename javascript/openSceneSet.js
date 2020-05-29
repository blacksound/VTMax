autowatch = 1;
outlets = 2;

//this buffer is not represented outside (in Max), but is convenient to use for this task
var dict_buffer = new Dict("dict_buffer");
//this is in the sceneManager and it has the currently opened scenes
var scenes = new Dict("VTM_scenes");
var setScenesList, openedScenesList;

//helper function to decide if a file is a .json
//the built-in .endsWith() is apparently not "built-in" Max JS.
//So let's do it by hand. Thank you, Max.
function isJson(pathToJson) {
  var theEnd = pathToJson.slice(-5);
  if (theEnd == ".json") {
    return true;
  } else {
    return false;
  }
}

//helper function to open a scene
function openScene(sceneName) {
  var theScene = dict_buffer.get("scenes::"+sceneName);
  var thePath = theScene.get("path"); //load the filepath
  //if the scenes dict is not empty
  if (openedScenesList != null) {
    //then check if it is not opened already
    if (openedScenesList.indexOf(sceneName) == -1) {
      outlet(0, "load", thePath); //if not, then load it via the [pcontrol]
    }
    //if scenes dict is empty, just load everything
  } else {
    outlet(0, "load", thePath);
  }
}

//helper function to update old style scene sets (containing only subdicts of paths)
//to new style scene sets (paths are collected under "scenes" key, plus added "client" key)
function updateScenesetFormat(pathToJson) {
  var dict_newformat = new Dict("dict_newformat"); //make new dict for the new json
  var dict_scenes_temp = new Dict("dict_scenes_temp"); //temporary container for the old json
  dict_newformat.clear();
  dict_newformat.replace("client", "<none>"); //add "client" entry for new json
  dict_scenes_temp.clone("dict_buffer"); //clone the old json in the temporary container
  dict_newformat.replace("scenes", dict_scenes_temp); //...and add it to the new json under "scenes"
  var oldJson = pathToJson.slice(0, -5) + "_old.json"; //save the old json as a backup
  dict_buffer.export_json(oldJson);
  dict_newformat.export_json(pathToJson); //overwrite old json with the refactored content
  post("Updated", pathToJson, "\n");
}

//main function:
function openSet(pathToJson) {
  //if the file is json
  if (isJson(pathToJson)) {
    dict_buffer.import_json(pathToJson); //load it into the dict
    var keysFromJson = dict_buffer.getkeys(); //scenes in the set
    if (keysFromJson.indexOf("scenes") == -1) {
      post("old format! updating...\n");
      updateScenesetFormat(pathToJson);
      openSet(pathToJson);
    } else {
      openedScenesList = scenes.getkeys(); //currently opened scenes
      var setScenes = dict_buffer.get("scenes");
      setScenesList = setScenes.getkeys();
      //go through the list of scenes in the set
      setScenesList.forEach(openScene);
      setScenesList = setScenesList.sort(); //sort alphabetically
      if (dict_buffer.contains("client")) {
        var client = dict_buffer.get("client");
        if (client != "" && client != "<none>") {
          outlet(1, client);
        }
      }
      post("Loading set with:", setScenesList, "\n");
    }
  } else {
    post("This file doesn't look like a .json file to me. Try harder.");
  }
}

autowatch = 1;

//this buffer is not represented outside (in Max), but is convenient to use for this task
var dict_buffer = new Dict("dict_buffer");
//this is in the sceneManager and it has the currently opened scenes
var scenes = new Dict("VTM_scenes");

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

//main function:
function openSet(pathToJson) {
  //if the file is json
  if (isJson(pathToJson)) {
    dict_buffer.import_json(pathToJson); //load it into the dict
    var setScenesList = dict_buffer.getkeys(); //scenes in the set
    var openedScenesList = scenes.getkeys(); //currently opened scenes
    //go through the list of scenes in the set
    setScenesList.forEach(function(sceneName) {
      var theScene = dict_buffer.get(sceneName);
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
    });
    setScenesList = setScenesList.sort(); //sort alphabetically
    post("Loading set with:", setScenesList, "\n");
  } else {
    post("This file doesn't look like a .json file to me. Try harder.");
  }
}

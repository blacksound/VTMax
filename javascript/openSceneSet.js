autowatch = 1;

var dict_buffer = new Dict("dict_buffer");

function isJson(pathToJson) {
  var theEnd = pathToJson.slice(-5);
  if (theEnd == ".json") {
    return true;
  } else {
    return false;
  }
}

function openSet(pathToJson) {
  if (isJson(pathToJson)) {
    dict_buffer.import_json(pathToJson);
    var theKeys = dict_buffer.getkeys();
    theKeys.forEach(function(sceneName) {
      var theScene = dict_buffer.get(sceneName);
      var thePath = theScene.get("path");
      outlet(0, "load", thePath);
    });
  }
}

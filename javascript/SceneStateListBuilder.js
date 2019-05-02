autowatch = 1;
var p = this.patcher;
var currentWidgets;
var oldWidgets = [];

//used in: buildWidget
//check if a particular widget exists
function widgetExists(arg_widgetID) {
  if (p.getnamed(arg_widgetID)) {
    return true;
  } else {
    return false;
  }
}

//used in: getWidgets
//build a widget if it's not there already
function buildWidget(arg_sceneName) {
  var sceneName = arg_sceneName;
  if (!widgetExists("sceneWidget_" + sceneName)) {
    var statusBPatcher;
    statusBPatcher = p.newdefault(
      0,
      0,
      "bpatcher",
      "@name",
      "VTMSceneStatus.view",
      "@presentation",
      1,
      "@presentation_rect",
      0,
      0,
      150,
      23,
      "@patching_rect",
      0,
      0,
      150,
      23,
      "@args",
      "/" + sceneName
    );
    //tag it with a unique scripting name
    statusBPatcher.varname = "statusWidget_" + sceneName;
  }
}

//used in: getWidgets
//remove a widget corresponding to a scene name
function removeWidget(arg_sceneName) {
  var widgetID = "statusWidget_" + arg_sceneName;
  var widgetToRemove = p.getnamed(widgetID);
  p.remove(widgetToRemove);
}

//used in: getWidgets
function arrangeHeights() {
  //topmost widget is always 0px from top
  var height = 0; //changed from 62 when moved to its own container bpatcher
  //Cycle through all the currently existing widgets (they are already arriving
  //sorted from the coll) and put them under each other.
  currentWidgets.forEach(function(widget) {
    var thisWidget = p.getnamed("statusWidget_" + widget);
    var rectArray = [0, height, 150, 23];
    //It is very weird and frustrating, but for some reason this twisted way
    //is the only one which does the job. Setting it with the . operator should
    //work, but it doesn't. As always, no explanation, no documentation, nothing.
    p.message(
      "script",
      "sendbox",
      thisWidget.varname,
      "patching_rect",
      rectArray[0],
      rectArray[1],
      rectArray[2],
      rectArray[3]
    );
    p.message(
      "script",
      "sendbox",
      thisWidget.varname,
      "presentation_rect",
      rectArray[0],
      rectArray[1],
      rectArray[2],
      rectArray[3]
    );
    //increment height with the width of a widget
    height += 23;
  });
}

//reset memory and delete all widgets
function resetAll() {
  oldWidgets = [];
  p.applyif(
    function(obj) {
      p.remove(obj);
    },
    function(obj) {
      return obj.maxclass == "patcher";
    }
  );
}

//Main function: get the sorted list of scene names from the coll,
//create new widgets, remove old ones, and rearrange heights according
//to (new) alphanumeric order.
function getWidgets() {
  currentWidgets = arrayfromargs(arguments);
  //check what's not there anymore, and remove it
  oldWidgets.forEach(function(widget) {
    if (currentWidgets.indexOf(widget) == -1) {
      removeWidget(widget);
    }
  });
  //check what's not there yet, and create it
  currentWidgets.forEach(function(widget) {
    if (oldWidgets.indexOf(widget) == -1) {
      buildWidget(widget);
    }
  });
  //rearrange widgets to keep the alphanumeric order
  arrangeHeights();
  //save list of scenes into memory
  oldWidgets = currentWidgets;
}

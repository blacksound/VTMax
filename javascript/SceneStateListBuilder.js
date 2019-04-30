autowatch = 1;

var heightCounter = 0;
var height = 10;
var p = this.patcher;

var currentWidgets, oldWidgets;
oldWidgets = [];

function resetMemory() {
  oldWidgets = [];
}

function getWidgets() {
  currentWidgets = arrayfromargs(arguments);

  oldWidgets.forEach(function(widget) {
    if (currentWidgets.indexOf(widget) == -1) {
      removeWidget(widget);
    }
  });

  currentWidgets.forEach(function(widget) {
    if (oldWidgets.indexOf(widget) != -1) {
    } else {
      buildWidget(widget);
    }
  });
  arrangeHeights();
  oldWidgets = currentWidgets;
}

function arrangeHeights() {
  height = 62;

  currentWidgets.forEach(function(widget) {
    var thisWidget = p.getnamed("statusWidget_" + widget);
    var rectArray = [0, height, 150, 23];
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
    height += 23;
  });
}

function widgetExists(arg_widgetID) {
  if (this.patcher.getnamed(arg_widgetID)) {
    return true;
  } else {
    return false;
  }
}

function buildWidget(arg_sceneName) {
  var sceneName = arg_sceneName;

  if (!widgetExists("sceneWidget_" + sceneName)) {
    var statusBPatcher;
    statusBPatcher = this.patcher.newdefault(
      0,
      height,
      "bpatcher",
      "@name",
      "VTMSceneStatus.view",
      "@presentation",
      1,
      "@presentation_rect",
      0,
      height,
      150,
      23,
      "@patching_rect",
      0,
      height,
      150,
      23,
      "@args",
      "/" + sceneName
    );
    statusBPatcher.varname = "statusWidget_" + sceneName;
  }
}

function removeWidget(arg_sceneName) {
  var widgetID = "statusWidget_" + arg_sceneName;
  var widgetToRemove = this.patcher.getnamed(widgetID);
  this.patcher.remove(widgetToRemove);
}

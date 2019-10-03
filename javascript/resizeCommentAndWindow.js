autowatch = 1;
var p = this.patcher;
var fontHeight = 100;
var currentHeight = 0;
var screenSize = [0, 0, 1440, 900];

function objectExists(name) {
  if (p.getnamed(name)) {
    return true;
  } else {
    return false;
  }
}

function getHeight(name) {
  if (objectExists(name)) {
    var thisObject = p.getnamed(name);
    var height = thisObject.rect[3] - thisObject.rect[1];
    return height;
  }
}

function getWidth(name) {
  if (objectExists(name)) {
    var thisObject = p.getnamed(name);
    var width = thisObject.rect[2] - thisObject.rect[0];
    return width;
  }
}

function getFontHeight(name) {
  if (objectExists(name)) {
    var thisObject = p.getnamed(name);
    p.message("script", "send", thisObject.varname, "set", " ");
    fontHeight = getHeight(name);
  }
}

function incrementWidth(name, amount) {
  if (objectExists(name)) {
    var thisObject = p.getnamed(name);
    var rectArray = thisObject.rect;
    p.message(
      "script",
      "sendbox",
      thisObject.varname,
      "patching_rect",
      rectArray[0],
      rectArray[1],
      rectArray[2] - rectArray[0] + amount,
      rectArray[3]
    );
    p.message(
      "script",
      "sendbox",
      thisObject.varname,
      "presentation_rect",
      rectArray[0],
      rectArray[1],
      rectArray[2] - rectArray[0] + amount,
      rectArray[3]
    );
  }
}

function autoFixWidthToMessage(name) {
  if (objectExists(name)) {
    currentHeight = getHeight(name);
    while (currentHeight > fontHeight) {
      incrementWidth(name, 5);
      currentHeight = getHeight(name);
    }
  }
}

function setContent(name, content) {
  if (objectExists(name)) {
    var thisObject = p.getnamed(name);
    p.message("script", "send", thisObject.varname, "set", content);
  }
}

function getScreenRect() {
  screenSize = arrayfromargs(arguments);
}

function fitWindowTo(name) {
  if (objectExists(name)) {
    var location = p.wind.location;
    var windHeight = location[3] - location[1];
    var width = getWidth(name);
    p.message("window", "size", 100, 100, width + 120, windHeight + 120);
    p.message("window", "exec");
  }
}

function moveWindowToMiddle() {
  var location = p.wind.location;
  var windWidth = location[2] - location[0];
  var windHeight = location[3] - location[1];
  p.message(
    "window",
    "size",
    screenSize[2] / 2 - windWidth / 2,
    screenSize[3] / 2 - windHeight / 2,
    screenSize[2] / 2 + windWidth / 2, // - 68,
    screenSize[3] / 2 + windHeight / 2 - 20
  );
  p.message("window", "exec");
}

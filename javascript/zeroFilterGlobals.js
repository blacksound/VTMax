autowatch = 1;
outlets = 2;

function zeroItem(name) {
  var zeroName = name;
  var zeroNameTest = zeroName.toString().slice(0, 6);
  if (zeroNameTest == "global" || zeroNameTest == "Global") {
    var zeroToDictKey = zeroName.replace(" ", "_");
    outlet(1, "set", zeroToDictKey, zeroName);
  } else {
    outlet(0, "append", zeroName);
  }
}

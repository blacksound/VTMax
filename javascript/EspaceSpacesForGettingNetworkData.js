///This script serves to fix the enourmous suckitude that is Max MSP.

outlets = 1;
inlets = 1;

function makeShellMessageForDeviceName(str) {
	outlet(
		0,
		"networksetup -getinfo " + escapeSpaces(str)
	);
}

function escapeSpaces(str) {
  var splitStr = str.split(" ");
  var newStr = splitStr.join("\\\\ ");
  return newStr;
}
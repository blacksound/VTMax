inlets = 1;
outlets = 1;


function escape(str) {
	post(str + "\n");
  var splitStr = str.split(" ");
  var newStr = splitStr.join("\\\\ ");
  outlet(0, newStr);
}
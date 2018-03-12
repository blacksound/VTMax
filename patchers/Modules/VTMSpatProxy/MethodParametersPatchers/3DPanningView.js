outlets = 3;
var positionOutlet = 1;
var sourcePositionOutlet = 2;
mgraphics.init();
mgraphics.relative_coords = 1;
mgraphics.autofill = 0;

var speakerSize = 0.1;
var speakerSizeOffset = speakerSize / 2.0;
var speakerColor = [1.0, 0.0, 0.0, 1.0];
var controlKnobSize = 0.1;
var controlKnobSizeOffset = controlKnobSize / 2.0;
var controlKnobColor = [0.0, 1.0, 0.0, 1.0];
var sourceSize = 0.1;
var sourceSizeOffset = controlKnobSize / 2.0;
var sourceColor = [0.0, 0.0, 1.0, 1.0];

var knobCoords = [0.0, 0.0];
var controlPosition = [0.0, 0.0];
var roomSize = 15.0;
var zoom = 1.0;
var numSources = 2;
var sourcePositions;
var sourceWorldCoords;
var speakerPositions = new Dict("speakerPositions");
var speakerWorldCoords = [];
var speakerNames;
var direction = 0.0; // the diretion in angle degrees
var spread = 0.0; // the spread in angle degrees
var disperse = 0.0; //the distance from the control point to source positions

//init code
setNumSources(numSources);


//Drawing functions
function paint() {
	drawKnob();
	drawSources();
	drawSpeakers();
}

function drawKnob() {
	updateKnobWorldCoords();
	with(mgraphics) {
		set_source_rgba(controlKnobColor);
		rectangle(
			knobCoords[0] - controlKnobSizeOffset,
			knobCoords[1] - controlKnobSizeOffset,
			controlKnobSize, controlKnobSize);
		fill();
	}
}

function drawSpeakers() {
	with(mgraphics) {
		if(speakerWorldCoords.length > 0) {
			var i, pos;
			set_source_rgba(speakerColor);
			for(i = 0; i < speakerWorldCoords.length; i = i + 2) {
				rectangle(
					speakerWorldCoords[i] - speakerSizeOffset,
					speakerWorldCoords[i + 1] - speakerSizeOffset,
					speakerSize, speakerSize
				);
				fill();
			}
		}
	}
}

function drawSources() {
	calculateSourcePositions();
	with(mgraphics) {
		if(sourceWorldCoords.length > 0) {
			var i, pos;
			for(i = 0; i < sourceWorldCoords.length; i = i + 2) {
				set_source_rgba(sourceColor);
				rectangle(
					sourceWorldCoords[i] - sourceSizeOffset,
					sourceWorldCoords[i + 1] - sourceSizeOffset,
					sourceSize, sourceSize
				);
				fill();
			}
		}
	}
}

function bang() {
	mgraphics.redraw();
}

//Calculation functions
function calculateSpeakerCoords() {
	speakerWorldCoords = [];
	speakerWorldCoords = new Array(speakerNames.length * 2);
	for(i = 0; i < speakerNames.length; i++)
	{
		var speaker, position, coordIndex, worldCoord;
		speaker = speakerPositions.get(speakerNames[i]);
		position = speaker.get("position");
		worldCoord = roomToWorld(position);

		coordIndex = i * 2;
		speakerWorldCoords[coordIndex] = worldCoord[0];
		speakerWorldCoords[coordIndex + 1] = worldCoord[1];
	}
}

function calculateSourcePositions() {
	var halfSpread = spread / 2.0;
	//controlPosition
	for(var i = 0; i < sourcePositions.length; i = i + 2) {
		var x, y, pos, sourceAngle, sourceNum = i / 2;

		//add disperse
		x = controlPosition[0];
		y = controlPosition[1] - disperse;

		sourceAngle = -direction;
		if(numSources > 1) {
			var ang = sourceNum.map(0.0, numSources - 1, -halfSpread, halfSpread);
			sourceAngle = sourceAngle + ang;
		}

		//rotate according to the angle/direction
		pos = rotate(controlPosition[0], controlPosition[1], x, y, sourceAngle);

		sourcePositions[i] = pos[0];
		sourcePositions[i+1] = pos[1];
		outlet(sourcePositionOutlet, sourceNum + 1, pos[0], pos[1] );
		pos = roomToWorld(pos);
		sourceWorldCoords[i] = pos[0];
		sourceWorldCoords[i+1] = pos[1];
	}
	outlet(positionOutlet, controlPosition[0], controlPosition[1]);
}

Number.prototype.map = function (in_min, in_max, out_min, out_max) {
  return (this - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
}

//rotate code from theftprevention@Stackoverflow
//http://stackoverflow.com/questions/17410809/how-to-calculate-rotation-in-2d-in-javascript
function rotate(cx, cy, x, y, angle) {
    var radians = (Math.PI / 180) * angle,
        cos = Math.cos(radians),
        sin = Math.sin(radians),
        nx = (cos * (x - cx)) + (sin * (y - cy)) + cx,
        ny = (cos * (y - cy)) - (sin * (x - cx)) + cy;
    return [nx, ny];
}
//

function clearSpeakers() {
	speakerNames = [];
	speakerWorldCoords = [];
	mgraphics.redraw();
}

function updateKnobWorldCoords() {
	var pos = roomToWorld(controlPosition);
	knobCoords[0] = pos[0];
	knobCoords[1] = pos[1];
}

function ondrag(x, y, but, cmd, shift, capslock, option, ctrl)
{
	var pos, worldPos;
	pos = sketch.screentoworld(x, y);
	pos = worldToRoom(pos);
	setPosition(pos[0], pos[1]);
}

function setPosition(x, y) {
//	post(x + " # " + y); post();
	controlPosition = [x, y];
	mgraphics.redraw();
}

//Setters
function speakers() {
	var i;
	post("speaker dict set\n");
	speakerNames = null;
	speakerNames = new Array(arguments.length);
	for(i = 0; i < speakerNames.length; i++) {
		speakerNames[i] = arguments[i];
	}
	calculateSpeakerCoords();
	mgraphics.redraw();
}

function setZoom(val) {
	zoom = arguments[0];
	calculateSpeakerCoords();
	updateKnobWorldCoords();
	mgraphics.redraw();
}

function setNumSources() {
	numSources = arguments[0];
	sourcePositions = new Array(numSources * 2);
	sourceWorldCoords = new Array(sourcePositions.length);

	//init positions
	for(var i = 0; i < sourcePositions.length; i++) {
		sourcePositions[i] = 0.0;
		sourceWorldCoords[i] = 0.0;
	}

	post("NumSources:"); post(numSources); post();
	post("SourcePositions:"); post(sourcePositions); post();
	post("SourceWorldCoords:"); post(sourceWorldCoords); post();
}

function setSpread() {
	spread = arguments[0];
	mgraphics.redraw();
}

function setDisperse() {
	disperse = arguments[0];
	mgraphics.redraw();
}

function setDirection() {
	direction = arguments[0];
	mgraphics.redraw();
}

function worldToRoom() {
	var result, pos, mul;
	pos = arguments[0];
	mul = roomSize * (0.5 * zoom);
	result = [
		pos[0] * mul,
		pos[1] * -mul + (mul / zoom),
		0.0
	];
	return result;
}

function roomToWorld() {
	var result, pos, mul;
	pos = arguments[0];
	mul = (1.0/roomSize) * (2.0 / zoom);
	result = [
		pos[0] * mul,
		pos[1] * -mul + (1.0 / zoom),
		0.0
	];
	return result;
}

function radiansToDegrees() {
	return arguments[0] * (180.0 / Math.PI);
}

function degreesToRadians() {
	return arguments[0] * (Math.PI / 180.0);
}



mgraphics.redraw();

var outlets = 1;
var localJSendOutlet = 0;
var spatMethod = jsarguments[1];
var numInputs = jsarguments[2];
var inletPos = {"x": 300, "y": 0};
var inletGap = 25;
var numOutputs = 32;
	

function init()
{
	buildInletsAndDac();
}

function jinit() {
	registerWithLydserverProxy();
} 

function buildInletsAndDac()
{
	var p = this.patcher;
	var newObject;
	var inletObjects = [];
	var inletNumbers = [];
	var matrixObject;
	var matrixController;
	var dacObject;
	
	clearInletsAndDac();
	
	for(var i = 0; i < numOutputs; i++)
	{
		inletNumbers.push(i + 1);
	}
	
	dacObject = p.newdefault(inletPos.x, inletPos.y + 150, "dac~", inletNumbers);
	dacObject.varname = "dac";
	
	matrixObject = p.newdefault(inletPos.x, inletPos.y + 75, "matrix~", numInputs, numOutputs);
	matrixObject.varname = "matrix";
	
	matrixController = p.getnamed("matrixController");
	p.connect(matrixController, 0, matrixObject, 0);
	
	for(var i = 0; i < numOutputs; i++)
	{
		p.connect(matrixObject, i, dacObject, i);
	}
	
	for(var i = 0; i < numInputs; i++)
	{
		newObject = p.newdefault(inletPos.x + (inletGap * i), inletPos.y, "inlet");
		newObject.varname = "audioInlet_" + i;
		inletObjects.push(newObject);
		p.connect(newObject, 0, matrixObject, i);
	}
}

function clearInletsAndDac()
{
	var p = this.patcher;
	p.applyif(
		function(obj) {
			p.remove(obj);
		},	
		function(obj) {
			var result;
			result = (obj.maxclass == "inlet") && (obj.varname != "modelInlet");
			return result;
		}
	);
	var obj;
	obj = p.getnamed("dac");
	if(obj != null)
	{
		p.remove(obj);
	}
	obj = p.getnamed("matrix");
	if(obj != null)
	{
		p.remove(obj);
	}
	
}

function registerWithLydserverProxy(){
	outlet(localJSendOutlet, "registerSpatProxy")
}


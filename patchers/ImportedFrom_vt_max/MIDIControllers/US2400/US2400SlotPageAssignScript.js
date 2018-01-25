outlets = 3;
var messageOutlet = 1;//i.e. the second outlet
var forwardOutlet = 2;//i.e. the third outlet
var isAssigningOutlet = 0;

function assignSlotToPage()
{
	var slotnum = arguments[0];
	var pageName = arguments[1];
	var bankNumber = arguments[2];
	var slotPath = "/global/us2400/slot." + slotnum;
	var pagePath = "/control/" + pageName;
	var canvas = this.patcher.getnamed("us2400_slot" + slotnum + "_canvas").subpatcher();
	outlet(isAssigningOutlet, 1);
	clearCanvas(slotnum);
	
	var i;
	for(i = 0; i < 8; i++)
	{
		var slotChannelNumber = i + 1;
		var pageChannelNumber = slotChannelNumber + ((bankNumber - 1) * 8);
		var inputName, outputName;
		
		//Fader input goes to control page faders
		inputName = slotPath + "/fader." + slotChannelNumber;
		outputName = pagePath + "/fader." + pageChannelNumber;
		canvas.newdefault(0, 0,
			"j.map",
			"@input", inputName,
			"@output", outputName
		);
		forwardValue(outputName, inputName);
	
		//fader_motor input comes from control page faders
		inputName = pagePath + "/fader." + pageChannelNumber;
		outputName = slotPath + "/faderMotor." + slotChannelNumber;
		canvas.newdefault(0, 0,
			"j.map",
			"@input", inputName,
			"@output", outputName
		);
		forwardValue(inputName, outputName);
		
		//encoders goes to control page rotaryDelta
		inputName = slotPath + "/encoder." + slotChannelNumber;
		outputName = pagePath + "/rotary." + pageChannelNumber;
		canvas.newdefault(0, 0,
			"VTMEncoderToRotaryMapping",
			inputName,
			outputName
		);
		forwardValue(outputName, inputName);
		
/*		//control page rotary goes to slot encoder rings
		inputName = pagePath + "/rotary." + pageChannelNumber;
		outputName = slotPath + "/encoder_ring." + slotChannelNumber;
		canvas.newdefault(0, 0,
			"j.map",
			"@input", inputName,
			"@output", outputName
		);*/
		
		//buttons goes to control page buttons
		inputName = slotPath + "/button." + slotChannelNumber + "/A";
		outputName = pagePath + "/button." + pageChannelNumber + "/A";
		canvas.newdefault(0, 0,
			"j.map",
			"@input", inputName,
			"@output", outputName
		);
		forwardValue(outputName, inputName);
		
		inputName = slotPath + "/button." + slotChannelNumber + "/B";
		outputName = pagePath + "/button." + pageChannelNumber + "/B";
		canvas.newdefault(0, 0,
			"j.map",
			"@input", inputName,
			"@output", outputName
		);
		forwardValue(outputName, inputName);
		
		inputName = slotPath + "/button." + slotChannelNumber + "/C";
		outputName = pagePath + "/button." + pageChannelNumber + "/C";
		canvas.newdefault(0, 0,
			"j.map",
			"@input", inputName,
			"@output", outputName
		);
		forwardValue(outputName, inputName);
		

		//control page buttons goes to slot button LEDs
		inputName = pagePath + "/button." + pageChannelNumber + "/A_LED";
		outputName = slotPath + "/button." + slotChannelNumber + "/A_LED";
		canvas.newdefault(0, 0,
			"j.map",
			"@input", inputName,
			"@output", outputName,
			"@output/max", 1			
		);
		forwardValue(inputName, outputName);
		
		inputName = pagePath + "/button." + pageChannelNumber + "/B_LED";
		outputName = slotPath + "/button." + slotChannelNumber + "/B_LED";
		canvas.newdefault(0, 0,
			"j.map",
			"@input", inputName,
			"@output", outputName,
			"@output/max", 1
		);
		forwardValue(inputName, outputName);
		
		inputName = pagePath + "/button." + pageChannelNumber + "/C_LED";
		outputName = slotPath + "/button." + slotChannelNumber + "/C_LED";
		canvas.newdefault(0, 0,
			"j.map",
			"@input", inputName,
			"@output", outputName,
			"@output/max", 1
		);
		forwardValue(inputName, outputName);
/*		
		//fader Touch goes to D buttons on control page
		inputName = slotPath + "/faderTouch." + slotChannelNumber;
		outputName = pagePath + "/button." + pageChannelNumber + "/D";
		canvas.newdefault(0, 0,
			"j.map",
			"@input", inputName,
			"@output", outputName,
			"@output/max", 1
		);
*/		
	}	
	post("Mapped slot " + slotnum + " to " + pageName); post();
	outlet(isAssigningOutlet, 0);
}


function clearAll()
{
	clearCanvas(1);
	clearCanvas(2);
	clearCanvas(3);
}

function clearCanvas()
{
	var slotnum = arguments[0];
	var canvas = this.patcher.getnamed("us2400_slot" + slotnum + "_canvas").subpatcher();
	canvas.apply(function(item) {this.patcher.remove(item);});
	resetSlot(slotnum);
}


function resetSlot()
{
	var slotnum = arguments[0];
	var slotPath = "/global/us2400/slot." + slotnum;
	outlet(messageOutlet, "address", slotPath);
	outlet(messageOutlet, "resetSlot");
}


function forwardValue(fromPath, toPath)
{
	outlet(forwardOutlet, fromPath, toPath);
}
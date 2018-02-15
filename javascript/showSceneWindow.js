function bang()
{
	var viewCanvas;
	viewCanvas = this.patcher.parentpatcher.parentpatcher;
	viewCanvas = viewCanvas.getnamed("viewCanvas");
	viewCanvas.wind.bringtofront();
}
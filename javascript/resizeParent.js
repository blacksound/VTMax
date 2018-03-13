function msg_int( value )
{
	var parent, rectarray;
	parent = this.patcher.box;
	rectarray = parent.rect;
	rectarray[3] = value + rectarray[1];
	parent.rect = rectarray;
}
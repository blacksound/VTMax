function test()
{
	var p = this.patcher;
	post();
	post("path: " + p.filepath+ "\n");
	post("name: " + p.name + "\n");
	post();
}
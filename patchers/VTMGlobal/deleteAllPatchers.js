function bang()
{
	this.patcher.applyif(
		function(obj) { 
			this.patcher.remove(obj);
		},
		function(obj) {
			return obj.maxclass == "patcher"}
	);
}
package reflex.display
{
	import flash.display.DisplayObject;
	
	// the generic objects here are suspect, but I'm leaving them in for now.
	// Think DisplayObject3D from PaperVision, etc.
	public function addItemsAt(container:Object, children:Array, index:int = 0, template:Object = null):Array
	{
		var output:Array  = [];
		var length:int = children.length;
		for(var i:int = 0; i < length; i++) {
			var child:Object = children[i];
			var renderer:Object = addItemAt(container, child, index, template);
			output.push(renderer);
			if(renderer is DisplayObject) {
				index++;
			}
		}
		return output;
	}
	
}
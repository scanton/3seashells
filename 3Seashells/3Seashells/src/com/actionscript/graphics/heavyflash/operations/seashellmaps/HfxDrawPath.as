package com.actionscript.graphics.heavyflash.operations.seashellmaps
{
	import com.actionscript.graphics.heavyflash.operations.interfaces.IHeavyOperation;
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.canvases.interfaces.ICanvas;
	import com.actionscript.graphics.seashells.operations.GfxOpDrawPath;
	
	import flash.geom.Rectangle;
	
	public class HfxDrawPath extends GfxOpDrawPath implements IHeavyOperation
	{
		public function HfxDrawPath(canvas:ICanvas, commands:Vector.<int>, data:Vector.<Number>, winding:String="evenOdd")
		{
			super(canvas, commands, data, winding);
		}
		
		public function get rect():Rectangle
		{
			return null;
		}
		
		public function set rect(rectangle:Rectangle):void
		{
		}
	}
}
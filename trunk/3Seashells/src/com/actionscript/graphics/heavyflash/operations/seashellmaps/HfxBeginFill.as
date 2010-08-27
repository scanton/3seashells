package com.actionscript.graphics.heavyflash.operations.seashellmaps
{
	import com.actionscript.graphics.heavyflash.operations.interfaces.IHeavyOperation;
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.canvases.interfaces.ICanvas;
	import com.actionscript.graphics.seashells.operations.GfxOpBeginFill;
	
	import flash.geom.Rectangle;
	
	public class HfxBeginFill extends GfxOpBeginFill implements IHeavyOperation
	{
		
		public function HfxBeginFill(canvas:ICanvas, color:uint, alpha:Number=1.0)
		{
			super(canvas, color, alpha);
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
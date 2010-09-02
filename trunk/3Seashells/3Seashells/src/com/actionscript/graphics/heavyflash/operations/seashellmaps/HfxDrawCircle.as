package com.actionscript.graphics.heavyflash.operations.seashellmaps
{
	import com.actionscript.graphics.heavyflash.operations.interfaces.IHeavyOperation;
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.canvases.interfaces.ICanvas;
	import com.actionscript.graphics.seashells.operations.GfxOpDrawCircle;
	
	import flash.geom.Rectangle;
	
	public class HfxDrawCircle extends GfxOpDrawCircle implements IHeavyOperation
	{
		internal var _rect:Rectangle;
		
		public function HfxDrawCircle(canvas:ICanvas, rect:Rectangle)
		{
			_rect = rect;
			super(canvas, rect.x, rect.y, rect.width/2);
		}
		
		public function get rect():Rectangle
		{
			return _rect;
		}
		
		public function set rect(rectangle:Rectangle):void
		{
			super.x = rect.x;
			super.y = rect.y;
			super.radius = rect.width;
			_rect = rectangle;
		}
	}
}
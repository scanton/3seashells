package com.actionscript.graphics.heavyflash.operations.seashellmaps
{
	import com.actionscript.graphics.heavyflash.operations.interfaces.IHeavyOperation;
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.canvases.interfaces.ICanvas;
	import com.actionscript.graphics.seashells.operations.GfxOpDrawEllipse;
	
	import flash.geom.Rectangle;
	
	public class HfxDrawEllipse extends GfxOpDrawEllipse implements IHeavyOperation
	{
		internal var _rect:Rectangle;
		
		public function HfxDrawEllipse(canvas:ICanvas, rect:Rectangle)
		{
			super(canvas, rect.x, rect.y, rect.width, rect.height);
			_rect = rect;
		}
		
		public function get rect():Rectangle
		{
			return _rect;
		}
		
		public function set rect(rectangle:Rectangle):void
		{
			super.x = rectangle.x;
			super.y = rectangle.y;
			super.width = rectangle.width;
			super.height = rectangle.height;
			_rect = rectangle;
		}
	}
}
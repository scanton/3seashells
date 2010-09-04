package com.actionscript.graphics.heavyflash.operations.seashellmaps
{
	import com.actionscript.graphics.heavyflash.operations.interfaces.IHeavyOperation;
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.operations.GfxOpDrawRect;
	
	import flash.geom.Rectangle;
	
	public class HfxDrawRect extends GfxOpDrawRect implements IHeavyOperation
	{
		internal var _rect:Rectangle;
		
		public function HfxDrawRect(canvas:IContextFlash, rect:Rectangle)
		{
			_rect = rect;
			super(canvas, rect.x, rect.y, rect.width, rect.height);
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
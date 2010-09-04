package com.actionscript.graphics.heavyflash.operations.seashellmaps
{
	import com.actionscript.graphics.heavyflash.operations.interfaces.IHeavyOperation;
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.operations.GfxOpLineTo;
	
	import flash.geom.Rectangle;
	
	public class HfxLineTo extends GfxOpLineTo implements IHeavyOperation
	{
		internal var _rect:Rectangle;
		
		public function HfxLineTo(canvas:IContextFlash, rect:Rectangle)
		{
			_rect = rect;
			super(canvas, rect.x, rect.y);
		}
		
		public function get rect():Rectangle
		{
			return _rect;
		}
		
		public function set rect(rectangle:Rectangle):void
		{
			super.x = rectangle.x;
			super.y = rectangle.y;
			_rect = rectangle;
		}
	}
}
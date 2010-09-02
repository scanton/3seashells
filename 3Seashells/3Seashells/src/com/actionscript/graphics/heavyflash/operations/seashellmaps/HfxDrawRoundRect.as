package com.actionscript.graphics.heavyflash.operations.seashellmaps
{
	import com.actionscript.graphics.heavyflash.operations.interfaces.IHeavyOperation;
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.canvases.interfaces.ICanvas;
	import com.actionscript.graphics.seashells.operations.GfxOpDrawRoundRect;
	
	import flash.geom.Rectangle;
	
	public class HfxDrawRoundRect extends GfxOpDrawRoundRect implements IHeavyOperation
	{
		internal var _rect:Rectangle;
		internal var _ellipse:Rectangle;
		
		public function HfxDrawRoundRect(canvas:ICanvas, rect:Rectangle, ellipse:Rectangle)
		{
			super(canvas, rect.x, rect.y, rect.width, rect.height, ellipse.width, ellipse.height);
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
		public function get ellipse():Rectangle {
			return _ellipse;
		}
		public function set ellipse(ellipse:Rectangle):void {
			super.ellipseWidth = ellipse.width;
			super.ellipseHeight = ellipse.height;
			_ellipse = ellipse;
		}
	}
}
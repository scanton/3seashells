package com.actionscript.graphics.heavyflash.operations.seashellmaps
{
	import com.actionscript.graphics.heavyflash.operations.interfaces.IHeavyOperation;
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.canvases.interfaces.ICanvas;
	import com.actionscript.graphics.seashells.operations.GfxOpCurveTo;
	
	import flash.geom.Rectangle;
	
	public class HfxCurveTo extends GfxOpCurveTo implements IHeavyOperation
	{
		internal var _rect:Rectangle;
		
		public function HfxCurveTo(canvas:ICanvas, rect:Rectangle)
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
			controlX = rectangle.x;
			controlY = rectangle.y;
			anchorX = rectangle.width;
			anchorY = rectangle.height;
		}
	}
}
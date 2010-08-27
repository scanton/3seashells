package com.actionscript.graphics.heavyflash.operations.seashellmaps
{
	import com.actionscript.graphics.heavyflash.operations.interfaces.IHeavyOperation;
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.canvases.interfaces.ICanvas;
	import com.actionscript.graphics.seashells.operations.AbstractGraphicOperation;
	
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	import mx.utils.NameUtil;
	
	public class HfxCurveThroughPoint extends AbstractGraphicOperation implements IHeavyOperation
	{
		internal var _rect:Rectangle;
		internal var _throughPoint:Point;
		
		public function HfxCurveThroughPoint(canvas:ICanvas, rect:Rectangle, throughPoint:Point)
		{
			super(canvas);
			_rect = rect
		}
		override public function render():void
		{
			var x0:Number = _rect.x;
			var y0:Number = _rect.y;
			var x2:Number = _rect.x + _rect.width;
			var y2:Number = _rect.y + _rect.height;
			var x1:Number = _throughPoint.x * 2 - (x0 - x2) / 2;
			var y1:Number = _throughPoint.y * 2 - (y0 - y2) / 2;
			IContextFlash(canvas).moveTo(x0, y0); 
			IContextFlash(canvas).curveTo(x1, y1, x2, y2);
		}
		public function get rect():Rectangle
		{
			return _rect;
		}
		
		public function set rect(rectangle:Rectangle):void
		{
			_rect = rect;
		}
	}
}
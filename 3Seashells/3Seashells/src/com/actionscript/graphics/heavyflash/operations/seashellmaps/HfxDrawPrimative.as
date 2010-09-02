package com.actionscript.graphics.heavyflash.operations.seashellmaps
{
	import com.actionscript.graphics.heavyflash.operations.interfaces.IHeavyOperation;
	import com.actionscript.graphics.seashells.canvases.contexts.Flash10Graphics;
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.ICanvasContext;
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.canvases.interfaces.ICanvas;
	import com.actionscript.graphics.seashells.operations.AbstractGraphicOperation;
	
	import flash.geom.Rectangle;
	
	public class HfxDrawPrimative extends AbstractGraphicOperation implements IHeavyOperation
	{
		internal var _rect:Rectangle;
		internal var _sides:int;
		internal var _pointSize:Number;
		
		public function HfxDrawPrimative(canvas:ICanvas, rect:Rectangle, sides:int, pointSize:Number)
		{
			super(canvas);
			_rect = rect;
			_sides = sides;
			_pointSize = pointSize;
		}
		override public function render():void
		{
			var g:IContextFlash = canvas as IContextFlash;
			
			var innerXRadius:Number = _rect.width/2 - _pointSize;
			var innerYRadius:Number = _rect.height/2 - _pointSize;
			var outerXRadius:Number = _rect.width/2;
			var outerYRadius:Number = _rect.height/2;
			var l:int = _sides * 2;
			
			g.moveTo(Math.sin((l/_sides)*Math.PI) * outerXRadius + _rect.x, Math.cos((l/_sides)*Math.PI) * outerYRadius + _rect.y);
			
			var xRadius:Number;
			var yRadius:Number;
			while(l--) {
				xRadius = l % 2 ? innerXRadius : outerXRadius;
				yRadius = l % 2 ? innerYRadius : outerYRadius;
				g.lineTo(Math.sin((l/_sides)*Math.PI) * xRadius + _rect.x, Math.cos((l/_sides)*Math.PI) * yRadius + _rect.y);
			}
		}
		
		public function get rect():Rectangle
		{
			return _rect;
		}
		
		public function set rect(rectangle:Rectangle):void
		{
			_rect = rectangle;
		}
	}
}
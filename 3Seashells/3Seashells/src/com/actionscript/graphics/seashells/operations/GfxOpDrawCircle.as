package com.actionscript.graphics.seashells.operations
{
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.canvases.interfaces.ICanvas;
	
	public class GfxOpDrawCircle extends AbstractGraphicOperation
	{
		internal var _x:Number;
		internal var _y:Number;
		internal var _radius:Number;
		
		public function GfxOpDrawCircle(canvas:ICanvas, x:Number, y:Number, radius:Number)
		{
			super(canvas);
			_x = x;
			_y = y;
			_radius = radius;
		}
		override public function render():void {
			IContextFlash(canvas).drawCircle(_x, _y, _radius);
		}
		protected function get x():Number 
		{
			return _x;
		}
		
		protected function set x(value:Number):void 
		{
			_x = value;
		}
		
		protected function get y():Number
		{
			return _y;
		}
		
		protected function set y(value:Number):void
		{
			_y = value;
		}
		protected function get radius():Number {
			return _radius;
		}
		protected function set radius(value:Number):void {
			_radius = value;
		}
	}
}
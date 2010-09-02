package com.actionscript.graphics.seashells.operations
{
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.canvases.interfaces.ICanvas;
	
	public class GfxOpMoveTo extends AbstractGraphicOperation
	{
		internal var _x:Number;
		internal var _y:Number;
		
		public function GfxOpMoveTo(canvas:ICanvas, x:Number, y:Number)
		{
			super(canvas);
			_x = x;
			_y = y;
		}
		override public function render():void {
			IContextFlash(canvas).lineTo(_x, _y);
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
	}
}
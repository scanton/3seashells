package com.actionscript.graphics.seashells.operations
{
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	
	public class GfxOpDrawEllipse extends AbstractGraphicOperation
	{
		internal var _x:Number;
		internal var _y:Number;
		internal var _width:Number;
		internal var _height:Number;
		
		public function GfxOpDrawEllipse(canvas:IContextFlash, x:Number, y:Number, width:Number, height:Number)
		{
			super(canvas);
			_x = x;
			_y = y;
			_width = width;
			_height = height;
		}
		
		override public function render():void {
			IContextFlash(canvas).drawEllipse(_x, _y, _width, _height);
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
		protected function get width():Number 
		{
			return _width;
		}
		
		protected function set width(value:Number):void 
		{
			_width = value;
		}
		
		protected function get height():Number
		{
			return _height;
		}
		
		protected function set height(value:Number):void
		{
			_height = value;
		}
	}
}
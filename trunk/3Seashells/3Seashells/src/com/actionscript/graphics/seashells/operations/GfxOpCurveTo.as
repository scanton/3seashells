package com.actionscript.graphics.seashells.operations
{
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.canvases.interfaces.ICanvas;
	
	public class GfxOpCurveTo extends AbstractGraphicOperation
	{
		internal var _controlX:Number;
		internal var _controlY:Number;
		internal var _anchorX:Number;
		internal var _anchorY:Number;
		
		public function GfxOpCurveTo(canvas:ICanvas, controlX:Number, controlY:Number, anchorX:Number, anchorY:Number)
		{
			super(canvas);
			_controlX = controlX;
			_controlY = controlY;
			_anchorX = anchorX;
			_anchorY = anchorY;
		}
		override public function render():void {
			IContextFlash(canvas).curveTo(_controlX, _controlY, _anchorX, _anchorY);
		}
		public function get anchorX():Number {
			return _anchorX;
		}
		public function set anchorX(value:Number):void {
			_anchorX = value;
		}
		public function get anchorY():Number {
			return _anchorY;
		}
		public function set anchorY(value:Number):void {
			_anchorY = value;
		}
		public function get controlX():Number {
			return _controlX;
		}
		public function set controlX(value:Number):void {
			_controlX = value;
		}
		public function get controlY():Number {
			return _controlY;
		}
		public function set controlY(value:Number):void {
			_controlY = value;
		}
	}
}
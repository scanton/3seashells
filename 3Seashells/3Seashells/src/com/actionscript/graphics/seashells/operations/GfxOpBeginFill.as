package com.actionscript.graphics.seashells.operations
{
	import com.actionscript.graphics.seashells.canvases.contexts.Flash10Graphics;
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.canvases.interfaces.ICanvas;
	
	import flash.display.Graphics;
	
	public class GfxOpBeginFill extends AbstractGraphicOperation
	{
		internal var _color:uint;
		internal var _alpha:Number;
		
		public function GfxOpBeginFill(canvas:ICanvas, color:uint, alpha:Number = 1.0)
		{
			super(canvas);
			_color = color;
			_alpha = alpha;
		}
		override public function render():void {
			IContextFlash(canvas).beginFill(_color, _alpha);
		}
	}
}
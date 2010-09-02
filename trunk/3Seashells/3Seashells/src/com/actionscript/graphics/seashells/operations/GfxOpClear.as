package com.actionscript.graphics.seashells.operations
{
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.canvases.interfaces.ICanvas;
	
	import flash.display.Graphics;
	
	public class GfxOpClear extends AbstractGraphicOperation
	{
		public function GfxOpClear(canvas:ICanvas)
		{
			super(canvas);
		}
		
		override public function render():void {
			IContextFlash(canvas).clear();
		}
	}
}
package com.actionscript.graphics.seashells.operations
{
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.canvases.interfaces.ICanvas;
	
	public class GfxOpEndFill extends AbstractGraphicOperation
	{
		public function GfxOpEndFill(canvas:ICanvas)
		{
			super(canvas);
		}
		override public function render():void {
			IContextFlash(canvas).endFill();
		}
	}
}
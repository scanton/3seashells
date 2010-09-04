package com.actionscript.graphics.seashells.operations
{
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	
	public class GfxOpEndFill extends AbstractGraphicOperation
	{
		public function GfxOpEndFill(canvas:IContextFlash=null)
		{
			super(canvas);
		}
		override public function render():void {
			IContextFlash(canvas).endFill();
		}
	}
}
package com.actionscript.graphics.seashells.operations
{
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	
	public class GfxOpClear extends AbstractGraphicOperation
	{
		public function GfxOpClear(canvas:IContextFlash=null)
		{
			super(canvas);
		}
		
		override public function render():void {
			IContextFlash(canvas).clear();
		}
	}
}
package com.actionscript.graphics.seashells.operations
{
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	
	import flash.display.Graphics;
	
	public class GfxOpCopyFrom extends AbstractGraphicOperation
	{
		internal var _sourceGraphics:Graphics;
		
		public function GfxOpCopyFrom(canvas:IContextFlash, sourceGraphics:Graphics)
		{
			super(canvas);
			_sourceGraphics;
		}
		
		override public function render():void 
		{
			IContextFlash(canvas).copyFrom(_graphics as IContextFlash);
		}
	}
}
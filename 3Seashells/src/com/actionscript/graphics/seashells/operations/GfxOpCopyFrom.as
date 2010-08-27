package com.actionscript.graphics.seashells.operations
{
	
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.canvases.interfaces.ICanvas;
	
	import flash.display.Graphics;
	
	public class GfxOpCopyFrom extends AbstractGraphicOperation
	{
		internal var _sourceGraphics:Graphics;
		
		public function GfxOpCopyFrom(canvas:ICanvas, sourceGraphics:Graphics)
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
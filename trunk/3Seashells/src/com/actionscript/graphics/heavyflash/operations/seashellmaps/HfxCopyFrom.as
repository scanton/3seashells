package com.actionscript.graphics.heavyflash.operations.seashellmaps
{
	import com.actionscript.graphics.heavyflash.operations.interfaces.IHeavyOperation;
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.canvases.interfaces.ICanvas;
	import com.actionscript.graphics.seashells.operations.GfxOpCopyFrom;
	
	import flash.display.Graphics;
	import flash.geom.Rectangle;
	
	public class HfxCopyFrom extends GfxOpCopyFrom implements IHeavyOperation
	{
		public function HfxCopyFrom(canvas:ICanvas, sourceGraphics:Graphics)
		{
			super(canvas, sourceGraphics);
		}
		
		public function get rect():Rectangle
		{
			return null;
		}
		
		public function set rect(rectangle:Rectangle):void
		{
		}
	}
}
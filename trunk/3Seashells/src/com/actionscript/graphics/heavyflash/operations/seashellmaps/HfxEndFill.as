package com.actionscript.graphics.heavyflash.operations.seashellmaps
{
	import com.actionscript.graphics.heavyflash.operations.interfaces.IHeavyOperation;
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.operations.GfxOpEndFill;
	
	import flash.geom.Rectangle;
	
	public class HfxEndFill extends GfxOpEndFill implements IHeavyOperation
	{
		public function HfxEndFill(canvas:IContextFlash=null)
		{
			super(canvas);
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
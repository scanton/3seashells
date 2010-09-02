package com.actionscript.graphics.heavyflash.operations.seashellmaps
{
	import com.actionscript.graphics.heavyflash.operations.interfaces.IHeavyOperation;
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.canvases.interfaces.ICanvas;
	import com.actionscript.graphics.seashells.operations.GfxOpDrawGraphicsData;
	
	import flash.display.IGraphicsData;
	import flash.geom.Rectangle;
	
	public class HfxDrawGraphicsData extends GfxOpDrawGraphicsData implements IHeavyOperation
	{
		public function HfxDrawGraphicsData(canvas:ICanvas, graphicsData:Vector.<IGraphicsData>)
		{
			super(canvas, graphicsData);
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
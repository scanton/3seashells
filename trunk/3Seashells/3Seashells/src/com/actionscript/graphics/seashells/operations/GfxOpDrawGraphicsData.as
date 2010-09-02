package com.actionscript.graphics.seashells.operations
{
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.canvases.interfaces.ICanvas;
	
	import flash.display.IGraphicsData;
	
	public class GfxOpDrawGraphicsData extends AbstractGraphicOperation
	{
		internal var _graphicsData:Vector.<IGraphicsData>;
		
		public function GfxOpDrawGraphicsData(canvas:ICanvas, graphicsData:Vector.<IGraphicsData>)
		{
			super(canvas);
			_graphicsData = graphicsData;
		}
	}
}
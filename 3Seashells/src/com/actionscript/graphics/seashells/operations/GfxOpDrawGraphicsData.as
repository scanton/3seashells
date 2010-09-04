package com.actionscript.graphics.seashells.operations
{
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	
	import flash.display.IGraphicsData;
	
	public class GfxOpDrawGraphicsData extends AbstractGraphicOperation
	{
		internal var _graphicsData:Vector.<IGraphicsData>;
		
		public function GfxOpDrawGraphicsData(canvas:IContextFlash, graphicsData:Vector.<IGraphicsData>)
		{
			super(canvas);
			_graphicsData = graphicsData;
		}
	}
}
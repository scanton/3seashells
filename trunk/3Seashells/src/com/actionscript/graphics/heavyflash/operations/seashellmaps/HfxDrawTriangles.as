package com.actionscript.graphics.heavyflash.operations.seashellmaps
{
	import com.actionscript.graphics.heavyflash.operations.interfaces.IHeavyOperation;
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.operations.GfxOpDrawTriangles;
	
	import flash.geom.Rectangle;
	
	public class HfxDrawTriangles extends GfxOpDrawTriangles implements IHeavyOperation
	{
		public function HfxDrawTriangles(canvas:IContextFlash, vertices:Vector.<Number>, indices:Vector.<int>=null, uvtData:Vector.<Number>=null, culling:String="none")
		{
			super(canvas, vertices, indices, uvtData, culling);
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
package com.actionscript.graphics.heavyflash.operations.seashellmaps
{
	import com.actionscript.graphics.heavyflash.operations.interfaces.IHeavyOperation;
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.operations.GfxOpBeginBitmapFill;
	
	import flash.display.BitmapData;
	import flash.geom.Matrix;
	import flash.geom.Rectangle;
	
	public class HfxBeginBitmapFill extends GfxOpBeginBitmapFill implements IHeavyOperation
	{
		public function HfxBeginBitmapFill(canvas:IContextFlash, bitmap:BitmapData, matrix:Matrix=null, repeat:Boolean=true, smooth:Boolean=false)
		{
			super(canvas, bitmap, matrix, repeat, smooth);
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
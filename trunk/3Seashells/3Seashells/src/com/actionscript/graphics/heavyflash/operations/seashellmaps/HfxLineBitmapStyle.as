package com.actionscript.graphics.heavyflash.operations.seashellmaps
{
	import com.actionscript.graphics.heavyflash.operations.interfaces.IHeavyOperation;
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.canvases.interfaces.ICanvas;
	import com.actionscript.graphics.seashells.operations.GfxOpLineBitmapStyle;
	
	import flash.display.BitmapData;
	import flash.geom.Matrix;
	import flash.geom.Rectangle;
	
	public class HfxLineBitmapStyle extends GfxOpLineBitmapStyle implements IHeavyOperation
	{
		public function HfxLineBitmapStyle(canvas:ICanvas, bitmap:BitmapData, matrix:Matrix=null, repeat:Boolean=true, smooth:Boolean=false)
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
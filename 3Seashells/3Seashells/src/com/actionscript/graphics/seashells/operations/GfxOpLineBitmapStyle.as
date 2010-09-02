package com.actionscript.graphics.seashells.operations
{
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.canvases.interfaces.ICanvas;
	
	import flash.display.BitmapData;
	import flash.geom.Matrix;
	
	public class GfxOpLineBitmapStyle extends AbstractGraphicOperation
	{
		internal var _bitmap:BitmapData;
		internal var _matrix:Matrix = null;
		internal var _repeat:Boolean = true;
		internal var _smooth:Boolean = false;
		
		public function GfxOpLineBitmapStyle(canvas:ICanvas, bitmap:BitmapData, matrix:Matrix = null, repeat:Boolean = true, smooth:Boolean = false)
		{
			super(canvas);
			_bitmap = bitmap;
			_matrix = matrix;
			_repeat = repeat;
			_smooth = smooth;
		}
		override public function render():void {
			IContextFlash(canvas).lineBitmapStyle(_bitmap, _matrix, _repeat, _smooth);
		}
	}
}
package com.actionscript.graphics.seashells.operations
{
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.canvases.interfaces.ICanvas;
	
	import flash.display.BitmapData;
	import flash.display.Graphics;
	import flash.geom.Matrix;
	
	public class GfxOpBeginBitmapFill extends AbstractGraphicOperation
	{
		internal var _bitmap:BitmapData;
		internal var _matrix:Matrix;
		internal var _repeat:Boolean;
		internal var _smooth:Boolean;
		
		public function GfxOpBeginBitmapFill(canvas:ICanvas, bitmap:BitmapData, matrix:Matrix = null, repeat:Boolean = true, smooth:Boolean = false)
		{
			super(canvas);
			_bitmap = bitmap;
			_matrix = matrix;
			_repeat = repeat;
			_smooth = smooth;
		}
		override public function render():void {
			IContextFlash(canvas).beginBitmapFill(_bitmap, _matrix, _repeat, _smooth);
		}
	}
}
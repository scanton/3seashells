package com.actionscript.graphics.seashells.operations
{
	import com.actionscript.graphics.seashells.canvases.contexts.Flash10Graphics;
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	
	import flash.display.BitmapData;
	import flash.geom.Matrix;
	
	public class GfxOpBeginBitmapFill extends AbstractGraphicOperation
	{
		internal var _bitmap:BitmapData;
		internal var _matrix:Matrix;
		internal var _repeat:Boolean;
		internal var _smooth:Boolean;
		
		public function GfxOpBeginBitmapFill(canvas:IContextFlash, bitmap:BitmapData, matrix:Matrix = null, repeat:Boolean = true, smooth:Boolean = false)
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
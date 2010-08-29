/**
 * Copyright (c) 2010 Satori Canton
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 * */

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
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

package com.actionscript.graphics.seashells.canvases
{
	import com.actionscript.graphics.heavyflash.geom.HeavyMatrix;
	import com.actionscript.graphics.seashells.canvases.interfaces.IBitmapCanvas;
	import com.actionscript.graphics.seashells.canvases.interfaces.ICanvas;
	import com.actionscript.graphics.seashells.renderers.interfaces.IRenderer;
	
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.IBitmapDrawable;
	import flash.geom.ColorTransform;
	import flash.geom.Matrix;
	import flash.geom.Rectangle;
	
	public class BitmapCanvas extends Bitmap implements IBitmapCanvas
	{
		internal var _matrix:Matrix;
		internal var _colorTransform:ColorTransform;
		internal var _blendMode:String;
		internal var _clipRect:Rectangle;
		internal var _smoothing:Boolean = false;
		internal var _id:String;
		public function BitmapCanvas(bitmapData:BitmapData=null, pixelSnapping:String="auto", smoothing:Boolean=false)
		{
			super(bitmapData, pixelSnapping, smoothing);
		}
		public function get matrix():Matrix
		{
			return _matrix;
		}
		public function set matrix(matrix:Matrix):void
		{
			_matrix = matrix;
		}
		public function get colorTransform():ColorTransform
		{
			return _colorTransform;
		}
		public function set colorTransform(transform:ColorTransform):void
		{
			_colorTransform = transform;
		}
		public function get drawBlendMode():String
		{
			return _blendMode;
		}
		public function set drawBlendMode(value:String):void
		{
			_blendMode = value;
		}
		public function get clipRect():Rectangle
		{
			return _clipRect;
		}
		public function set clipRect(rect:Rectangle):void
		{
			_clipRect = rect;
		}
		public function get drawSmoothing():Boolean
		{
			return _smoothing;
		}
		public function set drawSmoothing(bool:Boolean):void
		{
			_smoothing = bool;
		}
		public function get id():String
		{
			return _id;
		}
		
		public function set id(value:String):void
		{
			_id = value;
		}
		
		public function get renderer():IRenderer
		{
			return null;
		}
		
		public function set renderer(renderer:IRenderer):void{}
		
		public function get canvas():ICanvas
		{
			return this;
		}
		public function draw(drawTarget:IBitmapDrawable):void
		{
			bitmapData.draw(drawTarget, _matrix, _colorTransform, _blendMode, _clipRect, _smoothing);
		}
	}
}
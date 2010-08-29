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
	
	public class GfxOpDrawRoundRect extends AbstractGraphicOperation
	{
		internal var _x:Number;
		internal var _y:Number;
		internal var _width:Number;
		internal var _height:Number;
		internal var _ellipseWidth:Number;
		internal var _ellipseHeight:Number;
		
		public function GfxOpDrawRoundRect(canvas:ICanvas, x:Number, y:Number, width:Number, height:Number, ellipseWidth:Number, ellipseHeight:Number = NaN)
		{
			super(canvas);
			_x = x;
			_y = y;
			_width = width;
			_height = height;
			_ellipseWidth = ellipseWidth;
			_ellipseHeight = ellipseHeight;
		}
		override public function render():void {
			IContextFlash(canvas).drawRoundRect(_x, _y, _width, _height, _ellipseWidth, _ellipseHeight);
		}
		public function get x():Number {
			return _x;
		}
		public function set x(value:Number):void {
			_x = value;
		}
		public function get y():Number {
			return _y;
		}
		public function set y(value:Number):void {
			_y = value;
		}
		public function get width():Number {
			return _width;
		}
		public function set width(value:Number):void {
			_width = value;
		}
		public function get height():Number {
			return _height;
		}
		public function set height(value:Number):void {
			_height = value;
		}
		public function get ellipseWidth():Number {
			return _ellipseWidth;
		}
		public function set ellipseWidth(value:Number):void {
			_ellipseWidth = value;
		}
		public function get ellipseHeight():Number {
			return _ellipseHeight;
		}
		public function set ellipseHeight(value:Number):void {
			_ellipseHeight = value;
		}
	}
}
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

package com.actionscript.graphics.heavyflash.operations.seashellmaps
{
	import com.actionscript.graphics.heavyflash.operations.interfaces.IHeavyOperation;
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.canvases.interfaces.ICanvas;
	import com.actionscript.graphics.seashells.operations.AbstractGraphicOperation;
	
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	import mx.utils.NameUtil;
	
	public class HfxCurveThroughPoint extends AbstractGraphicOperation implements IHeavyOperation
	{
		internal var _rect:Rectangle;
		internal var _throughPoint:Point;
		
		public function HfxCurveThroughPoint(canvas:ICanvas, rect:Rectangle, throughPoint:Point)
		{
			super(canvas);
			_rect = rect
		}
		override public function render():void
		{
			var x0:Number = _rect.x;
			var y0:Number = _rect.y;
			var x2:Number = _rect.x + _rect.width;
			var y2:Number = _rect.y + _rect.height;
			var x1:Number = _throughPoint.x * 2 - (x0 - x2) / 2;
			var y1:Number = _throughPoint.y * 2 - (y0 - y2) / 2;
			IContextFlash(canvas).moveTo(x0, y0); 
			IContextFlash(canvas).curveTo(x1, y1, x2, y2);
		}
		public function get rect():Rectangle
		{
			return _rect;
		}
		
		public function set rect(rectangle:Rectangle):void
		{
			_rect = rect;
		}
	}
}
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
	import com.actionscript.graphics.seashells.canvases.interfaces.ICanvas;
	import com.actionscript.graphics.seashells.operations.GfxOpDrawRect;
	
	import flash.geom.Rectangle;
	
	public class HfxDrawRect extends GfxOpDrawRect implements IHeavyOperation
	{
		internal var _rect:Rectangle;
		
		public function HfxDrawRect(canvas:ICanvas, rect:Rectangle)
		{
			super(canvas, rect.x, rect.y, rect.width, rect.height);
			_rect = rect;
		}
		
		public function get rect():Rectangle
		{
			return _rect;
		}
		
		public function set rect(rectangle:Rectangle):void
		{
			super.x = rectangle.x;
			super.y = rectangle.y;
			super.width = rectangle.width;
			super.height = rectangle.height;
			_rect = rectangle;
		}
	}
}
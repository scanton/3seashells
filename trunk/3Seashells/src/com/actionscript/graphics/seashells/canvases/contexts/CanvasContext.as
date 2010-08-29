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

package com.actionscript.graphics.seashells.canvases.contexts
{
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.ICanvasContext;
	
	import flash.display.Graphics;
	import flash.utils.Proxy;

	public class CanvasContext extends Proxy implements ICanvasContext
	{
		public static const HTML_5:String = "2d";
		public static const FLASH_10:String = "flash10";
		public static const IOS:String = "ios";
		
		internal var _graphics:Graphics;
		
		public function CanvasContext(graphics:Graphics)
		{
			_graphics = graphics;
		}
		
		public function get graphics():Graphics {
			return _graphics;
		}
		public function set graphics(graphics:Graphics):void {
			_graphics = graphics;
		}
	}
}
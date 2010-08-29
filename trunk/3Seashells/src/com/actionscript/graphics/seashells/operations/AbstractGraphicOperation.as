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
	import com.actionscript.graphics.seashells.operations.interfaces.IGraphicOperation;
	
	public class AbstractGraphicOperation implements IGraphicOperation
	{
		internal var _graphics:ICanvas;
		
		public function AbstractGraphicOperation(canvas:ICanvas)
		{
			if(canvas == null) throw new Error("canvas cannot be null");
			_graphics = canvas;
		}
		
		public function render():void
		{
			throw new Error("AbstractOperation.render() called.  This method should be overridden in a subclass.");
		}
		
		public function get canvas():ICanvas
		{
			return _graphics;
		}
		
		public function set canvas(canvas:ICanvas):void
		{
			try {
				_graphics = canvas;
			} catch (e:Error) {
				e.message = "Unidentifiable Canvas Context in AbstractGraphicOperation.as - set canvas(canvas:ICanvasContext != IContextFlash).";
				throw(e);
			} finally {
				return;
			}
		}
	}
}
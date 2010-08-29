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
	import com.actionscript.graphics.seashells.canvases.contexts.Flash10Graphics;
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.ICanvasContext;
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.canvases.interfaces.ICanvas;
	import com.actionscript.graphics.seashells.operations.AbstractGraphicOperation;
	
	import flash.geom.Rectangle;
	
	public class HfxDrawPrimative extends AbstractGraphicOperation implements IHeavyOperation
	{
		internal var _rect:Rectangle;
		internal var _sides:int;
		internal var _pointSize:Number;
		
		public function HfxDrawPrimative(canvas:ICanvas, rect:Rectangle, sides:int, pointSize:Number)
		{
			super(canvas);
			_rect = rect;
			_sides = sides;
			_pointSize = pointSize;
		}
		override public function render():void
		{
			var g:IContextFlash = canvas as IContextFlash;
			
			var innerXRadius:Number = _rect.width/2 - _pointSize;
			var innerYRadius:Number = _rect.height/2 - _pointSize;
			var outerXRadius:Number = _rect.width/2;
			var outerYRadius:Number = _rect.height/2;
			var l:int = _sides * 2;
			
			g.moveTo(Math.sin((l/_sides)*Math.PI) * outerXRadius + _rect.x, Math.cos((l/_sides)*Math.PI) * outerYRadius + _rect.y);
			
			var xRadius:Number;
			var yRadius:Number;
			while(l--) {
				xRadius = l % 2 ? innerXRadius : outerXRadius;
				yRadius = l % 2 ? innerYRadius : outerYRadius;
				g.lineTo(Math.sin((l/_sides)*Math.PI) * xRadius + _rect.x, Math.cos((l/_sides)*Math.PI) * yRadius + _rect.y);
			}
		}
		
		public function get rect():Rectangle
		{
			return _rect;
		}
		
		public function set rect(rectangle:Rectangle):void
		{
			_rect = rectangle;
		}
	}
}
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

package com.actionscript.graphics.heavyflash.renderers
{
	
	import com.actionscript.graphics.heavyflash.renderers.interfaces.IHeavyRenderer;
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.ICanvasContext;
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.canvases.interfaces.ICanvas;
	import com.actionscript.graphics.seashells.operations.AbstractGraphicOperation;
	import com.actionscript.graphics.seashells.operations.interfaces.IGraphicOperation;
	import com.actionscript.graphics.seashells.renderers.interfaces.IRenderer;
	
	public class HeavyRenderer extends AbstractGraphicOperation implements IHeavyRenderer
	{
		internal var _operations:Vector.<IGraphicOperation>;
		
		public function HeavyRenderer(canvas:ICanvas)
		{
			super(canvas);
			_operations = new Vector.<IGraphicOperation>();
		}
		
		
		override public function render():void
		{
			var l:uint = _operations.length;
			for(var i:uint = 0; i < l; i++) {
				_operations[i].render();
			}
		}
		
		
		public function get numOperations():uint
		{
			return _operations.length;
		}
		
		public function addOperation(operation:IGraphicOperation):uint
		{
			return _operations.push(operation);
		}
		
		public function addOperationAt(operaton:IGraphicOperation, index:uint):uint
		{
			return _operations.splice(index, 0, operaton).length;
		}
		
		public function addOperations(operations:Vector.<IGraphicOperation>):uint
		{
			var l:uint = operations.length;
			for(var i:uint = 0; i < l; i++) {
				addOperation(operations[i]);
			}
			return _operations.length;
		}
		
		public function removeOperation(operation:IGraphicOperation):IGraphicOperation
		{
			var l:uint = _operations.length;
			while(l--) {
				if(_operations[l] == operation) {
					return removeOperationAt(l);
				}
			}
			return null;
		}
		
		public function removeOperations(operations:Vector.<IGraphicOperation>):Vector.<IGraphicOperation>
		{
			var v:Vector.<IGraphicOperation>
			var l:uint = operations.length;
			for(var i:int = 0; i < l; i++) {
				var gfxop:IGraphicOperation = removeOperation(operations[i]);
				if(gfxop != null) {
					v.push(gfxop);
				}
			}
			return v;
		}
		
		public function removeOperationAt(index:uint):IGraphicOperation
		{
			var g:IGraphicOperation = _operations[index];
			_operations.splice(index, 1);
			return g;
		}
	}
}
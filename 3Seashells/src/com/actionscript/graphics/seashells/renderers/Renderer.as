package com.actionscript.graphics.seashells.renderers
{
	import com.actionscript.graphics.seashells.operations.interfaces.IGraphicOperation;
	import com.actionscript.graphics.seashells.renderers.interfaces.IRenderer;
	
	public class Renderer implements IRenderer
	{
		internal var _operations:Vector.<IGraphicOperation>;
		
		public function Renderer()
		{
			_operations = new Vector.<IGraphicOperation>;
		}
		
		public function get numOperations():uint
		{
			return _operations.length;
		}
		
		public function addOperation(operation:IGraphicOperation):uint
		{
			return _operations.push(operation);
		}
		
		public function addOperationAt(operation:IGraphicOperation, index:uint):uint
		{
			_operations.splice(index, 0, operation);
			return _operations.length;
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
		
		public function render():void
		{
			var l:uint = _operations.length;
			for(var i:uint = 0; i < l; i++) {
				_operations[i].render();
			}
		}
	}
}
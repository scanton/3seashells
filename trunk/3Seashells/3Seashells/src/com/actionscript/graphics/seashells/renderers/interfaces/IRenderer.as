package com.actionscript.graphics.seashells.renderers.interfaces
{
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.ICanvasContext;
	import com.actionscript.graphics.seashells.operations.interfaces.IGraphicOperation;

	public interface IRenderer
	{
		function get numOperations():uint;
		function addOperation(operation:IGraphicOperation):uint;
		function addOperationAt(operaton:IGraphicOperation, index:uint):uint;
		function addOperations(operations:Vector.<IGraphicOperation>):uint;
		function removeOperation(operation:IGraphicOperation):IGraphicOperation;
		function removeOperations(operations:Vector.<IGraphicOperation>):Vector.<IGraphicOperation>;
		function removeOperationAt(index:uint):IGraphicOperation;
		function render():void;
	}
}
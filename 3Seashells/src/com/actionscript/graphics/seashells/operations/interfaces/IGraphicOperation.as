package com.actionscript.graphics.seashells.operations.interfaces
{
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.ICanvasContext;

	public interface IGraphicOperation
	{
		function render():void;
		function get canvas():com.actionscript.graphics.seashells.canvases.contexts.interfaces.ICanvasContext;
		function set canvas(canvas:ICanvasContext):void;
	}
}
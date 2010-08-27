package com.actionscript.graphics.seashells.operations.interfaces
{
	import com.actionscript.graphics.seashells.canvases.interfaces.ICanvas;

	public interface IGraphicOperation
	{
		function render():void;
		function get canvas():ICanvas;
		function set canvas(canvas:ICanvas):void;
	}
}
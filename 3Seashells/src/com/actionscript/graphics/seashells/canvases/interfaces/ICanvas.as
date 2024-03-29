package com.actionscript.graphics.seashells.canvases.interfaces
{
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.ICanvasContext;
	import com.actionscript.graphics.seashells.renderers.interfaces.IRenderer;
	
	import flash.display.Graphics;

	public interface ICanvas
	{
		function get id():String;
		function set id(value:String):void;
		function get renderer():IRenderer;
		function set renderer(renderer:IRenderer):void;
		function get numCanvases():uint;
		function addCanvas(canvas:ICanvas):uint;
		function addCanvasAt(canvas:ICanvas, index:uint):uint;
		function copyCanvas():ICanvas;
		function getContext(context:String):ICanvasContext;
		function removeCanvas(canvas:ICanvas):ICanvas;
		function removeCanvasAt(index:uint):ICanvas;
	}
}
package com.actionscript.graphics.seashells.canvases.interfaces
{
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.renderers.interfaces.IRenderer;
	
	import flash.display.Graphics;

	public interface ICanvas
	{
		function get id():String;
		function set id(value:String):void;
		function get renderer():IRenderer;
		function set renderer(renderer:IRenderer):void;
		function get canvas():IContextFlash;
	}
}
package com.actionscript.graphics.seashells.canvases
{
	
	import com.actionscript.graphics.seashells.canvases.contexts.CanvasContext;
	import com.actionscript.graphics.seashells.canvases.contexts.Flash10Graphics;
	import com.actionscript.graphics.seashells.canvases.contexts.HTML5Graphics;
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.ICanvasContext;
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextHTML5;
	import com.actionscript.graphics.seashells.canvases.interfaces.ICanvas;
	import com.actionscript.graphics.seashells.renderers.Renderer;
	import com.actionscript.graphics.seashells.renderers.interfaces.IRenderer;
	
	import flash.display.Graphics;
	import flash.display.Shape;
	
	public class ShapeCanvas extends Shape implements ICanvas
	{
		internal var _renderer:IRenderer;
		internal var _html5Graphics:HTML5Graphics;
		internal var _flash10Graphics:Flash10Graphics;
		
		public function ShapeCanvas()
		{
			super();
			_renderer = new Renderer();
			_html5Graphics = new HTML5Graphics(graphics);
			_flash10Graphics = new Flash10Graphics(graphics);
		}
		
		
		/** maping Flash instance.name and HTML5.canvas.id */
		public function get id():String
		{
			return name;
		}
		
		/** maping Flash instance.name and HTML5.canvas.id */
		public function set id(value:String):void
		{
			name = value;
		}		
		public function get renderer():IRenderer
		{
			return _renderer;
		}
		
		public function set renderer(renderer:IRenderer):void
		{
			_renderer = renderer;
		}
		
		/** @context doesn't really matter in this context, since
		 * the only context we can return is the graphics object.
		 * 
		 * This value would represent the '2d' and '3d' options in
		 * an HTML5 canvas context
		 * */
		public function getContext(context:String):ICanvasContext
		{
			if(context == CanvasContext.FLASH_10) {
				return flash10Graphics;
			} else if(context == CanvasContext.HTML_5) {
				return html5Graphics;
			}
			return null;
		}
		/** TODO: html5Graphics
		 * */
		public function  get html5Graphics():IContextHTML5 {
			return _html5Graphics;
		}
		public function get flash10Graphics():IContextFlash {
			return _flash10Graphics;
		}
		public function get canvas():IContextFlash
		{
			return flash10Graphics;
		}
	}
}
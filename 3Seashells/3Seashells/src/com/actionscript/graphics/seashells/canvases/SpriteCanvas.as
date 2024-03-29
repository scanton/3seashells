package com.actionscript.graphics.seashells.canvases
{
	
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.ICanvasContext;
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.canvases.interfaces.ICanvas;
	import com.actionscript.graphics.seashells.renderers.interfaces.IRenderer;
	
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	
	public class SpriteCanvas extends Sprite implements ICanvas
	{
		internal var _canvas:ShapeCanvas;
		
		public function SpriteCanvas()
		{
			super();
			_canvas = addChild(new ShapeCanvas()) as ShapeCanvas;
		}
		public function get canvas():IContextFlash
		{
			return _canvas.canvas;
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
		
		public function get renderer():IRenderer {
			return _canvas.renderer;
		}
		
		public function set renderer(renderer:IRenderer):void {
			_canvas.renderer = renderer;
		}
		
		/** @context doesn't really matter in this context, since
		 * the only context we can return is the graphics object.
		 * 
		 * This value would represent the '2d' and '3d' options in
		 * an HTML5 canvas context
		 * */
		public function getContext(context:String):ICanvasContext
		{
			return IContextFlash(_canvas.getContext(context));
		}
	}
}
package com.actionscript.graphics.seashells.canvases
{
	import actionscriptreference.utils.VectorUtils;
	
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.ICanvasContext;
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.canvases.interfaces.ICanvas;
	import com.actionscript.graphics.seashells.renderers.interfaces.IRenderer;
	
	public class SpriteCanvas extends Sprite implements ICanvas
	{
		internal var _canvas:ShapeCanvas;
		
		public function SpriteCanvas()
		{
			super();
			_canvas = addChild(new ShapeCanvas()) as ShapeCanvas;
		}
		
		public function addCanvas(canvas:ICanvas):uint {
			if(canvas is DisplayObject) {
				addChild(canvas as DisplayObject);
			}
			return _canvas.addCanvas(canvas);
		}
		public function addCanvasAt(canvas:ICanvas, index:uint):uint {
			if(canvas is DisplayObject) {
				addChildAt(canvas as DisplayObject, index);
			}
			return _canvas.addCanvasAt(canvas, index);
		}
		public function copyCanvas():ICanvas {
			return _canvas.copyCanvas();
		}
		public function get numCanvases():uint {
			return _canvas.numCanvases;
		}
		public function removeCanvas(canvas:ICanvas):ICanvas {
			if(canvas is DisplayObject) {
				removeChild(canvas as DisplayObject);
			}
			return _canvas.removeCanvas(canvas);
		}
		public function removeCanvasAt(index:uint):ICanvas
		{
			var c:ICanvas = _canvas.removeCanvasAt(index);
			if(c is DisplayObject) {
				removeChild(c as DisplayObject);
			}
			return c;
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
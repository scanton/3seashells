package com.actionscript.graphics.seashells.operations
{
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.canvases.interfaces.ICanvas;
	import com.actionscript.graphics.seashells.operations.interfaces.IGraphicOperation;
	
	public class AbstractGraphicOperation implements IGraphicOperation
	{
		internal var _graphics:ICanvas;
		
		public function AbstractGraphicOperation(canvas:ICanvas)
		{
			if(canvas == null) throw new Error("canvas cannot be null");
			_graphics = canvas;
		}
		
		public function render():void
		{
			throw new Error("AbstractOperation.render() called.  This method should be overridden in a subclass.");
		}
		
		public function get canvas():ICanvas
		{
			return _graphics;
		}
		
		public function set canvas(canvas:ICanvas):void
		{
			try {
				_graphics = canvas;
			} catch (e:Error) {
				e.message = "Unidentifiable Canvas Context in AbstractGraphicOperation.as - set canvas(canvas:ICanvasContext != IContextFlash).";
				throw(e);
			} finally {
				return;
			}
		}
	}
}
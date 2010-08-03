package com.actionscript.graphics.seashells.operations
{
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.ICanvasContext;
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.operations.interfaces.IGraphicOperation;
	
	public class AbstractGraphicOperation implements IGraphicOperation
	{
		internal var _graphics:ICanvasContext;
		
		public function AbstractGraphicOperation(canvas:ICanvasContext)
		{
			if(canvas == null) throw new Error("canvas cannot be null");
			_graphics = canvas;
		}
		
		public function render():void
		{
			throw new Error("AbstractOperation.render() called.  This method should be overridden in a subclass.");
		}
		
		public function get canvas():ICanvasContext
		{
			return _graphics;
		}
		
		public function set canvas(canvas:ICanvasContext):void
		{
			try {
				_graphics = IContextFlash(canvas);
			} catch (e:Error) {
				e.message = "Unidentifiable Canvas Context in AbstractGraphicOperation.as - set canvas(canvas:ICanvasContext != IContextFlash).";
				throw(e);
			} finally {
				return;
			}
		}
	}
}
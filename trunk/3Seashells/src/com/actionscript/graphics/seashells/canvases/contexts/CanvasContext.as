package com.actionscript.graphics.seashells.canvases.contexts
{
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.ICanvasContext;
	
	import flash.display.Graphics;
	import flash.utils.Proxy;

	public class CanvasContext extends Proxy implements ICanvasContext
	{
		public static const HTML_5:String = "2d";
		public static const FLASH_10:String = "flash10";
		public static const IOS:String = "ios";
		
		internal var _graphics:Graphics;
		
		public function CanvasContext(graphics:Graphics)
		{
			_graphics = graphics;
		}
		
		public function get graphics():Graphics {
			return _graphics;
		}
		public function set graphics(graphics:Graphics):void {
			_graphics = graphics;
		}
	}
}
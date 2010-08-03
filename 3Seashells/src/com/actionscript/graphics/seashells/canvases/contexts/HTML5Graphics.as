package com.actionscript.graphics.seashells.canvases.contexts
{
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextHTML5;
	
	import flash.display.Graphics;
	
	public class HTML5Graphics extends CanvasContext implements IContextHTML5
	{
		public function HTML5Graphics(graphics:Graphics)
		{
			super(graphics);
		}
	}
}
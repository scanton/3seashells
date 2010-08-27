package com.actionscript.graphics.seashells.operations
{
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.canvases.interfaces.ICanvas;
	
	public class GfxOpDrawPath extends AbstractGraphicOperation
	{
		internal var _commands:Vector.<int>;
		internal var _data:Vector.<Number>;
		internal var _winding:String;
		
		public function GfxOpDrawPath(canvas:ICanvas, commands:Vector.<int>, data:Vector.<Number>, winding:String = "evenOdd")
		{
			super(canvas);
			_commands = commands;
			_data = data;
			_winding = winding;
		}
	}
}
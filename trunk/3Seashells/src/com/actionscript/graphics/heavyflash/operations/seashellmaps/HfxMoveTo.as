package com.actionscript.graphics.heavyflash.operations.seashellmaps
{
	import com.actionscript.graphics.heavyflash.operations.interfaces.IHeavyOperation;
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.operations.GfxOpMoveTo;
	
	import flash.geom.Rectangle;
	
	public class HfxMoveTo extends GfxOpMoveTo implements IHeavyOperation
	{
		internal var _rect:Rectangle;
		
		public function HfxMoveTo(canvas:IContextFlash, rect:Rectangle)
		{
			_rect = rect;
			super(canvas, rect.right, rect.bottom);
		}
		
		public function get rect():Rectangle
		{
			return _rect;
		}
		
		public function set rect(rectangle:Rectangle):void
		{
			super.x = rect.right;
			super.y = rect.bottom;
			_rect = rectangle;
		}
	}
}
package com.actionscript.graphics.heavyflash.operations.interfaces
{
	import com.actionscript.graphics.seashells.operations.interfaces.IGraphicOperation;
	
	import flash.geom.Rectangle;

	public interface IHeavyOperation extends IGraphicOperation
	{
		function get rect():Rectangle;
		function set rect(rectangle:Rectangle):void;
	}
}
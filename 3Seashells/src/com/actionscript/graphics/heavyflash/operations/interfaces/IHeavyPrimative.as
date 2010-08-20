package com.actionscript.graphics.heavyflash.operations.interfaces
{
	import com.actionscript.graphics.heavyflash.renderers.interfaces.IHeavyRenderer;
	import com.actionscript.graphics.seashells.operations.AbstractGraphicOperation;
	import com.actionscript.graphics.seashells.operations.interfaces.IGraphicOperation;

	public interface IHeavyPrimative extends IHeavyRenderer
	{
		function get fill():AbstractGraphicOperation;
		function set fill(operation:AbstractGraphicOperation):void;
		function get draw():AbstractGraphicOperation;
		function set draw(operation:AbstractGraphicOperation):void;
		function get end():Boolean;
		function set end(value:Boolean):void;
	}
}
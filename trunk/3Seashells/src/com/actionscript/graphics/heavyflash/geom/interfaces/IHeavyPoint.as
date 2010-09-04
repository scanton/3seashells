package com.actionscript.graphics.heavyflash.geom.interfaces
{
	import com.actionscript.graphics.heavyflash.geom.HeavyPoint;
	
	import flash.geom.Point;

	public interface IHeavyPoint
	{
		function rotateAround(point:Point, degrees:Number, radius:Number):Point;
		function get velocity():Point;
		function set velocity(value:Point):void;
	}
}
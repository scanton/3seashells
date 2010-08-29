/**
 * Copyright (c) 2010 Satori Canton
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 * */

package com.actionscript.graphics.heavyflash.geom
{
	import com.actionscript.utils.TrigUtils;
	
	import com.actionscript.graphics.heavyflash.geom.interfaces.IHeavyPoint;
	
	import flash.geom.Point;
	
	public class HeavyPoint extends Point implements IHeavyPoint
	{
		internal var _velocity:Point;
		
		public function HeavyPoint(x:Number = 0, y:Number = 0, velocity:Point = null)
		{
			super(x, y);
			if(velocity == null)
			{
				_velocity = new Point();
			}
			else
			{
				_velocity = velocity;
			}
		}
		
		override public function clone():Point
		{
			var p:HeavyPoint = new HeavyPoint();
			p.x = x;
			p.y = y;
			p.velocity = velocity;
			return p;
		}
		public function distance(p:Point):Number
		{
			var w:Number = Math.abs(x - p.x);
			var h:Number = Math.abs(y - p.y);
			return new Point(w, h).length;
		}
		public function get velocity():Point
		{
			return _velocity;
		}
		public function set velocity(value:Point):void
		{
			_velocity = value;
		}
		public function rotateAround(point:Point, degrees:Number, radius:Number):Point
		{
			var p:HeavyPoint = clone() as HeavyPoint;
			p.x = point.x + (TrigUtils.sinDegrees(degrees) * radius);
			p.y = point.y + (TrigUtils.cosDegrees(degrees) * radius);
			return p;
		}
		public function getPoint(angle:int, radius:Number):Point
		{
			return new Point(TrigUtils.sinDegrees(angle) * radius, TrigUtils.cosDegrees(angle) * radius);
		}
	}
}
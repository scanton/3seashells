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

package com.actionscript.utils
{
	import flash.geom.Point;

	public class TrigUtils
	{
		internal static var _tableLength:int = 360;
		internal static var _sinTable:Vector.<Number>;
		internal static var _cosTable:Vector.<Number>;
		
		public function TrigUtils()
		{
			
			if(_sinTable == null) {
				initializeTrigTables();
			}
			
		}
		public static function sinDegrees(degrees:Number):Number
		{
			if(_sinTable == null) {
				initializeTrigTables();
			}
			degrees = Math.round(degrees);
			while(degrees < 0)
			{
				degrees += 360;
			}
			degrees = Math.round(degrees) % _sinTable.length;
			return _sinTable[degrees];
		}
		public static function cosDegrees(degrees:Number):Number
		{
			if(_sinTable == null) {
				initializeTrigTables();
			}
			degrees = Math.round(degrees);
			while(degrees < 0) {
				degrees += 360;
			}
			degrees = Math.round(degrees) % _sinTable.length;
			return _cosTable[degrees];
		}
		public static function angleTo(toPoint:Point, fromPoint:Point):Number
		{
			var deltaX:Number = toPoint.x - fromPoint.x; 
			var deltaY:Number = toPoint.y - fromPoint.y; 
			return Math.atan2(deltaY, deltaX) * 180 / Math.PI;
		}
		
		public static function degreesToRadians(degrees:Number):Number
		{
			return degrees * Math.PI / 180;
		}
		public static function radiansToDegrees(radians:Number):Number
		{
			return radians * 180 / Math.PI;
		}
		
		internal static function initializeTrigTables():void
		{
			/** TO DO:
			 * come back and optimize this.  Can easily be done with half the data
			 * points and can logically be done with a quarter (90)
			 * **/
			var l:int = _tableLength;
			_sinTable = new Vector.<Number>(l, true);
			_cosTable = new Vector.<Number>(l, true);
			while(l--)
			{
				_sinTable[l] = Math.sin(degreesToRadians(l));
				_cosTable[l] = Math.cos(degreesToRadians(l));
			}
		}
	}
}
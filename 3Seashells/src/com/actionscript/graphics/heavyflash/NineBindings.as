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

package com.actionscript.graphics.heavyflash
{
	/** 
	 * The nine holy bindings as defined by NineBindings.com
	 * */
	
	public class NineBindings
	{
		public static const TOP_LEFT:String = "topLeft";
		public static const TOP_RIGHT:String = "topRight";
		public static const CENTER_LEFT:String = "centerLeft";
		public static const CENTER_RIGHT:String = "centerRight";
		public static const BOTTOM_LEFT:String = "bottomLeft";
		public static const BOTTOM_RIGHT:String = "bottomRight";
		
		public static const TOP:String = "top";
		public static const CENTER:String = "center";
		public static const BOTTOM:String = "bottom";
		
		internal static const RIGHT:String = "right";
		internal static const LEFT:String = "left";
		internal static const FRONT:String = "front";
		internal static const BACK:String = "back";
		
		internal static const PAST:String = "past";
		internal static const FUTURE:String = "future";
		
		public function NineBindings(){}
		
		public static function holyBindings(dimensions:int):Vector.<String> {
			var order:Vector.<String> = holyOrder();
			
			var v:Vector.<String> = new Vector.<String>();
			var maxVal:uint = v.length;
			var l:uint = order.length;
			if(dimensions > 0 && dimensions < maxVal) 
			{
				if(dimensions > 1) 
				{
					for(var i:uint = 0; i < dimensions; i++) 
					{
						/**
						 * TO DO:
						 * Calculate factoral to provide order of presidence
						 * */
						//for(var j:uint = 0; j < 
					}
					return v;
				}
				return new <String>[LEFT.toUpperCase(), CENTER.toUpperCase(), RIGHT.toUpperCase()];
			} 
			return new <String>["Singularity"];
		}
		internal static function holyOrder():Vector.<String> {
			var v:Vector.<String> = new Vector.<String>(9, true);
			holyOrder[0] = TOP;
			holyOrder[1] = BOTTOM;
			holyOrder[2] = RIGHT;
			holyOrder[3] = LEFT;
			holyOrder[4] = FRONT;
			holyOrder[5] = BACK;
			holyOrder[6] = PAST;
			holyOrder[7] = FUTURE;
			holyOrder[8] = CENTER;
			return v;
		}
	}
}
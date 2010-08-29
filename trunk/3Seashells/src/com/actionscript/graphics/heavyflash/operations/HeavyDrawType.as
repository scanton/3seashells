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

package com.actionscript.graphics.heavyflash.operations
{
	import com.actionscript.graphics.heavyflash.operations.seashellmaps.HfxCurveTo;
	import com.actionscript.graphics.heavyflash.operations.seashellmaps.HfxDrawCircle;
	import com.actionscript.graphics.heavyflash.operations.seashellmaps.HfxDrawEllipse;
	import com.actionscript.graphics.heavyflash.operations.seashellmaps.HfxDrawRect;
	import com.actionscript.graphics.heavyflash.operations.seashellmaps.HfxDrawRoundRect;
	import com.actionscript.graphics.heavyflash.operations.seashellmaps.HfxLineTo;
	import com.actionscript.graphics.heavyflash.operations.seashellmaps.HfxMoveTo;
	import com.actionscript.graphics.seashells.operations.interfaces.IGraphicOperation;

	public class HeavyDrawType
	{
		public static const CIRCLE:String = "circle";
		public static const RECTANGLE:String = "rectangle";
		public static const ROUND_RECTANGLE:String = "roundRectangle";
		public static const ELLIPSE:String = "ellipse";
		public static const LINE_TO:String = "lineTo";
		public static const CURVE_TO:String = "curveTo";
		public static const MOVE_TO:String = "moveTo";
		
		public function HeavyDrawType()
		{
		}
		
		public static function locateClass(type:String):Class {
			switch (type) {
				case "circle" :
					return HfxDrawCircle;
				case "rectangle" :
					return HfxDrawRect;
				case "roundRectangle" :
					return HfxDrawRoundRect;
				case "ellipse" :
					return HfxDrawEllipse;
				case "lineTo" :
					return HfxLineTo;
				case "moveTo" :
					return HfxMoveTo;
				case "curveTo" :
					return HfxCurveTo;
				default :
					return HfxDrawRect;
			}
		}
	}
}
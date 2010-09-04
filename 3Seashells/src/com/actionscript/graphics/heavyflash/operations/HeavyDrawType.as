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
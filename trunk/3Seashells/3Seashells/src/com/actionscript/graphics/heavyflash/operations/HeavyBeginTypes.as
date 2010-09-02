package com.actionscript.graphics.heavyflash.operations
{
	import com.actionscript.graphics.heavyflash.operations.seashellmaps.HfxBeginBitmapFill;
	import com.actionscript.graphics.heavyflash.operations.seashellmaps.HfxBeginFill;
	import com.actionscript.graphics.heavyflash.operations.seashellmaps.HfxBeginGradientFill;
	import com.actionscript.graphics.heavyflash.operations.seashellmaps.HfxBeginShaderFill;

	public class HeavyBeginTypes
	{
		public static const BITMAP:String = "bitmap";
		public static const FILL:String = "fill";
		public static const GRADIENT:String = "gradient";
		public static const SHADER:String = "shader";
		
		public function HeavyBeginTypes()
		{
		}
		
		public static function locateClass(type:String):Class {
			switch (type) {
				case "bitmap" :
					return HfxBeginBitmapFill;
				case "gradient" :
					return HfxBeginGradientFill;
				case "shader" :
					return HfxBeginShaderFill;
				default :
					return HfxBeginFill;
			}
		}
	}
}
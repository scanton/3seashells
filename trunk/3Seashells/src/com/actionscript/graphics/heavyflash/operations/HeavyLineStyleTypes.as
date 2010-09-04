package com.actionscript.graphics.heavyflash.operations
{
	import com.actionscript.graphics.heavyflash.operations.seashellmaps.HfxLineBitmapStyle;
	import com.actionscript.graphics.heavyflash.operations.seashellmaps.HfxLineGradientStyle;
	import com.actionscript.graphics.heavyflash.operations.seashellmaps.HfxLineShaderStyle;
	import com.actionscript.graphics.heavyflash.operations.seashellmaps.HfxLineStyle;

	public class HeavyLineStyleTypes
	{
		public static const BITMAP:String = "bitmap";
		public static const GRADIENT:String = "gradient";
		public static const SHADER:String = "shader";
		public static const LINE:String = "line";
		
		public function HeavyLineStyleTypes()
		{
		}
		
		public static function locateClass(type:String):Class {
			switch (type) {
				case "bitmap" :
					return HfxLineBitmapStyle;
				case "gradient" :
					return HfxLineGradientStyle;
				case "shader" :
					return HfxLineShaderStyle;
				default :
					return HfxLineStyle;
			}
		}
	}
}
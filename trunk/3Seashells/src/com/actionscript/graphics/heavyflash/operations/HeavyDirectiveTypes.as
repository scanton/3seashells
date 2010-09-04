package com.actionscript.graphics.heavyflash.operations
{
	import com.actionscript.graphics.heavyflash.operations.seashellmaps.HfxClear;
	import com.actionscript.graphics.heavyflash.operations.seashellmaps.HfxEndFill;

	public class HeavyDirectiveTypes
	{
		public static const END:String = "end";
		public static const CLEAR:String = "clear";
		
		public function HeavyDirectiveTypes()
		{
		}
		
		public static function locateClass(type:String):Class {
			switch (type) {
				case "clear" :
					return HfxClear;
				default :
					return HfxEndFill;
			}
		}
	}
}
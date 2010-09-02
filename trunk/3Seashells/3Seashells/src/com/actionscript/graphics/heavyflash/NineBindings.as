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
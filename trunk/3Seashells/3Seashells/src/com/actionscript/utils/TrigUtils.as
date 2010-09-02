package com.actionscript.utils
{

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
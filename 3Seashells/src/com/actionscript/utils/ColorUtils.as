package com.actionscript.utils
{
	public class ColorUtils
	{
		public static const BLACK : uint = 0x000000;
		public static const BLUE : uint = 0x00007F;
		public static const BLUE_FULL : uint = 0x0000FF;
		public static const BROWN : uint = 0x7F7F00;
		public static const CYAN : uint = 0x007F7F;
		public static const CYAN_FULL : uint = 0x00FFFF;
		public static const GRAY : uint = 0x7F7F7F;
		public static const GREEN : uint = 0x007F00;
		public static const GREEN_FULL : uint = 0x00FF00;
		public static const MAGENTA : uint = 0x7F007F;
		public static const MAGENTA_FULL : uint = 0xFF00FF;
		public static const RED : uint = 0x7F0000;
		public static const RED_FULL : uint = 0xFF0000;
		public static const WHITE : uint = 0xFFFFFF;
		public static const YELLOW : uint = 0xFFFF00;
		
		public static function adjustHue(rgb:uint, diff:Number):uint
		{
			var o:Object = hslfromrgb(rgb);
			return hsl(o.hue + diff, o.saturation, o.luminance);
		}
		public static function adjustLuminance(rgb:uint, diff:Number):uint
		{
			var o:Object = hslfromrgb(rgb);
			return hsl(o.hue, o.saturation, o.luminance + diff);
		}
		public static function adjustSaturaton(rgb:uint, diff:Number):uint
		{
			var o:Object = hslfromrgb(rgb);
			return hsl(o.hue, o.saturation + diff, o.luminance);
		}
		public static function blue(color:uint):uint
		{
			return color & 0xFF;
		}
		public static function luminance(color:uint):Number
		{
			return hslfromrgb(color).luminance;
		}
		public static function difference(a:uint, b:uint):uint
		{
			var r:uint = Math.abs(red(a) - red(b));
			var g:uint = Math.abs(green(a) - green(b));
			var b:uint = Math.abs(blue(a) - blue(b));
			return rgb(r, g, b);
		}
		public static function green(color:uint):uint
		{
			return color >> 8 & 0xFF;
		}
		public static function hsl(hue:Number = 360, saturation:Number = 1, luminance:Number = 1):uint
		{
			var r:Number, g:Number, b:Number;
			hue %= 360;
			if(luminance == 0)
			{
				return 0x0;
			}
			saturation /= 100;
			luminance /= 100;
			hue /= 60;
			var i:Number = Math.floor(hue);
			var f:Number = hue - i;
			var p:Number = luminance * (1 - saturation);
			var q:Number = luminance * (1 - (saturation * f));
			var t:Number = luminance * (1 - (saturation * (1 - f)));
			switch(i)
			{
				case 0:
					
					r = luminance; g = t; b = p;
					break;
				
				case 1:
					
					r = q; g = luminance; b = p;
					break;
				
				case 2:
					
					r = p; g = luminance; b = t;
					break;
				
				case 3:
					
					r = p; g = q; b = luminance;
					break;
				
				case 4:
					
					r = t; g = p; b = luminance;
					break;
				
				case 5:
					
					r = luminance; g = p; b = q;
					break;
			}
			return rgb(Math.round(r * 255), Math.round(g * 255), Math.round(b * 255));
		}
		public static function hslfromrgb(rgb:uint):Object
		{
			var red:Number = red(rgb);
			var green:Number = green(rgb);
			var blue:Number = blue(rgb);
			
			var min:Number = Math.min(Math.min(red, green), blue);
			var luminance:Number = Math.max(Math.max(red, green), blue);
			var delta:Number = luminance - min;
			var saturation:Number = (luminance == 0) ? 0 : delta / luminance;
			var hue:Number;
			if(saturation == 0)
			{
				hue = 0;
			}
			else
			{
				if(red == luminance)
				{
					hue = (60 * (green - blue)) / delta;
				}
				else if(green == luminance)
				{
					hue = 120 + (60 * ( blue - red)) / delta;
				}
				else
				{
					hue = 240 + (60 * (red - green)) / delta;
				}
				if(hue < 0) hue += 360;
			}
			saturation *= 100
			luminance = (luminance / 255)*100
			return {hue:hue, saturation:saturation, luminance:luminance}
		}
		public static function hue(color:uint):Number
		{
			return hslfromrgb(color).hue;
		}
		public static function interpolate(a:uint, b:uint, k:Number = 0.5):uint
		{
			var r:uint = (red(a) * k) + (red(b) * (1 - k));
			var g:uint = (green(a) * k) + (green(b) * (1 - k));
			var b:uint = (blue(a) * k) + (blue(b) * (1 - k));
			return rgb(r, g, b);
		}
		public static function multiply(color:uint, multiplier:Number):uint
		{
			var r:uint = red(color) * multiplier;
			var g:uint = green(color) * multiplier;
			var b:uint = blue(color) * multiplier;
			return rgb(r, g, b);
		}
		public static function random(redMin:uint = 0, redMax:uint = 255, greenMin:uint = 0, greenMax:uint = 255, blueMin:uint = 0, blueMax:uint = 255):uint
		{
			var r:uint = (Math.random() * (redMax - redMin)) + redMin;
			var g:uint = (Math.random() * (greenMax - greenMin)) + greenMin;
			var b:uint = (Math.random() * (blueMax - blueMin)) + blueMin;
			return rgb(r, g, b);
		}
		public static function red(color:uint):uint
		{
			return color >> 16 & 0xFF;
		}
		public static function rgb(red:int, green:int, blue:int):uint
		{
			return (red << 16 | green << 8 | blue);
		}
		public static function saturation(color:uint):Number
		{
			return hslfromrgb(color).saturation;
		}
		public static function sum(a:uint, b:uint):uint
		{
			var r:uint = red(a) + red(b);
			var g:uint = green(a) + green(b);
			var b:uint = blue(a) + blue(b);
			return rgb(r, g, b);
		}
		public function ColorUtils() {}
		
	}
}
package com.actionscript.graphics.heavyflash.operations.seashellmaps
{
	import com.actionscript.graphics.heavyflash.operations.interfaces.IHeavyOperation;
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.operations.GfxOpLineGradientStyle;
	
	import flash.geom.Matrix;
	import flash.geom.Rectangle;
	
	public class HfxLineGradientStyle extends GfxOpLineGradientStyle implements IHeavyOperation
	{
		public function HfxLineGradientStyle(canvas:IContextFlash, type:String, colors:Array, alphas:Array, ratios:Array, matrix:Matrix=null, spreadMethod:String="pad", interpolationMethod:String="rgb", focalPointRatio:Number=0)
		{
			super(canvas, type, colors, alphas, ratios, matrix, spreadMethod, interpolationMethod, focalPointRatio);
		}
		
		public function get rect():Rectangle
		{
			return null;
		}
		
		public function set rect(rectangle:Rectangle):void
		{
		}
	}
}
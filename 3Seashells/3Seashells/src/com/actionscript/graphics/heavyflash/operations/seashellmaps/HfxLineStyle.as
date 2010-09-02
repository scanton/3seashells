package com.actionscript.graphics.heavyflash.operations.seashellmaps
{
	import com.actionscript.graphics.heavyflash.operations.interfaces.IHeavyOperation;
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.canvases.interfaces.ICanvas;
	import com.actionscript.graphics.seashells.operations.GfxOpLineStyle;
	
	import flash.geom.Rectangle;
	
	public class HfxLineStyle extends GfxOpLineStyle implements IHeavyOperation
	{
		public function HfxLineStyle(canvas:ICanvas, thickness:Number=NaN, color:uint=0, alpha:Number=1.0, pixelHinting:Boolean=false, scaleMode:String="normal", caps:String=null, joints:String=null, miterLimit:Number=3)
		{
			super(canvas, thickness, color, alpha, pixelHinting, scaleMode, caps, joints, miterLimit);
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
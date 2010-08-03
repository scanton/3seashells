package com.actionscript.graphics.seashells.operations
{
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	
	public class GfxOpLineStyle extends AbstractGraphicOperation
	{
		internal var _thickness:Number = NaN;
		internal var _color:uint = 0;
		internal var _alpha:Number = 1.0;
		internal var _pixelHinting:Boolean = false;
		internal var _scaleMode:String = "normal";
		internal var _caps:String = null;
		internal var _joints:String = null;
		internal var _miterLimit:Number = 3;
		
		public function GfxOpLineStyle(canvas:IContextFlash, thickness:Number = NaN, color:uint = 0, alpha:Number = 1.0, pixelHinting:Boolean = false, scaleMode:String = "normal", caps:String = null, joints:String = null, miterLimit:Number = 3)
		{
			super(canvas);
			_thickness = thickness;
			_color = color;
			_alpha = alpha;
			_pixelHinting = pixelHinting;
			_scaleMode = scaleMode;
			_caps = caps;
			_joints = joints;
			_miterLimit = miterLimit;
		}
		override public function render():void {
			IContextFlash(canvas).lineStyle(_thickness, _color, _alpha, _pixelHinting, _scaleMode, _caps, _joints, _miterLimit);
		}
	}
}
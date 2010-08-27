package com.actionscript.graphics.seashells.operations
{
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.canvases.interfaces.ICanvas;
	
	import flash.display.Graphics;
	import flash.geom.Matrix;
	
	public class GfxOpBeginGradientFill extends AbstractGraphicOperation
	{
		internal var _type:String;
		internal var _colors:Array;
		internal var _alphas:Array;
		internal var _ratios:Array;
		internal var _matrix:Matrix;
		internal var _spreadMethod:String;
		internal var _interpolationMethod:String;
		internal var _focalPointRatio:Number;
		
		public function GfxOpBeginGradientFill(canvas:ICanvas, type:String, colors:Array, alphas:Array, ratios:Array, matrix:Matrix = null, spreadMethod:String = "pad", interpolationMethod:String = "rgb", focalPointRatio:Number = 0)
		{
			super(canvas);
			_type = type;
			_colors = colors;
			_alphas = alphas;
			_ratios = ratios;
			_matrix = matrix;
			_spreadMethod = spreadMethod;
			_interpolationMethod = interpolationMethod;
			_focalPointRatio = focalPointRatio;
		}
		override public function render():void {
			IContextFlash(canvas).beginGradientFill(_type, _colors, _alphas, _ratios, _matrix, _spreadMethod, _interpolationMethod, _focalPointRatio);
		}
	}
}
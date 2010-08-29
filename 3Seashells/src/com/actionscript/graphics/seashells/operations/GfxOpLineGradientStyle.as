/**
 * Copyright (c) 2010 Satori Canton
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 * */

package com.actionscript.graphics.seashells.operations
{
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.canvases.interfaces.ICanvas;
	
	import flash.geom.Matrix;
	
	public class GfxOpLineGradientStyle extends AbstractGraphicOperation
	{
		internal var _type:String;
		internal var _colors:Array;
		internal var _alphas:Array;
		internal var _ratios:Array;
		internal var _matrix:Matrix = null;
		internal var _spreadMethod:String = "pad";
		internal var _interpolationMethod:String = "rgb";
		internal var _focalPointRatio:Number = 0;
		
		public function GfxOpLineGradientStyle(canvas:ICanvas, type:String, colors:Array, alphas:Array, ratios:Array, matrix:Matrix = null, spreadMethod:String = "pad", interpolationMethod:String = "rgb", focalPointRatio:Number = 0)
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
			IContextFlash(canvas).lineGradientStyle(_type, _colors, _alphas, _ratios, _matrix, _spreadMethod, _interpolationMethod, _focalPointRatio);
		}
	}
}
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

package com.actionscript.graphics.seashells.canvases.contexts
{
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	
	import flash.display.BitmapData;
	import flash.display.Graphics;
	import flash.display.IGraphicsData;
	import flash.display.Shader;
	import flash.geom.Matrix;
	
	public class Flash10Graphics extends CanvasContext implements IContextFlash
	{
		
		public function Flash10Graphics(graphics:Graphics)
		{
			super(graphics);
		}
		
		public function beginBitmapFill(bitmap:BitmapData, matrix:Matrix=null, repeat:Boolean=true, smooth:Boolean=false):void
		{
			return graphics.beginBitmapFill(bitmap, matrix, repeat, smooth);
		}
		
		public function beginFill(color:uint, alpha:Number=1.0):void
		{
			return graphics.beginFill(color, alpha);
		}
		
		public function beginGradientFill(type:String, colors:Array, alphas:Array, ratios:Array, matrix:Matrix=null, spreadMethod:String="pad", interpolationMethod:String="rgb", focalPointRatio:Number=0):void
		{
			return graphics.beginGradientFill(type, colors, alphas, ratios, matrix, spreadMethod, interpolationMethod, focalPointRatio);
		}
		
		public function beginShaderFill(shader:Shader, matrix:Matrix=null):void
		{
			return graphics.beginShaderFill(shader, matrix);
		}
		
		public function clear():void
		{
			return graphics.clear();
		}
		
		public function copyFrom(sourceGraphics:IContextFlash):void
		{
			return graphics.copyFrom(IContextFlash as Graphics);
		}
		
		public function curveTo(controlX:Number, controlY:Number, anchorX:Number, anchorY:Number):void
		{
			return graphics.curveTo(controlX, controlY, anchorX, anchorY);
		}
		
		public function drawCircle(x:Number, y:Number, radius:Number):void
		{
			return graphics.drawCircle(x, y, radius);
		}
		
		public function drawEllipse(x:Number, y:Number, width:Number, height:Number):void
		{
			return graphics.drawEllipse(x, y, width, height);
		}
		
		public function drawGraphicsData(graphicsData:Vector.<IGraphicsData>):void
		{
			return graphics.drawGraphicsData(graphicsData);
		}
		
		public function drawPath(commands:Vector.<int>, data:Vector.<Number>, winding:String="evenOdd"):void
		{
			return graphics.drawPath(commands, data, winding);
		}
		
		public function drawRect(x:Number, y:Number, width:Number, height:Number):void
		{
			return graphics.drawRect(x, y, width, height);
		}
		
		public function drawRoundRect(x:Number, y:Number, width:Number, height:Number, ellipseWidth:Number, ellipseHeight:Number=NaN):void
		{
			return graphics.drawRoundRect(x, y, width, height, ellipseWidth, ellipseHeight);
		}
		
		public function drawTriangles(vertices:Vector.<Number>, indices:Vector.<int>=null, uvtData:Vector.<Number>=null, culling:String="none"):void
		{
			return graphics.drawTriangles(vertices, indices, uvtData, culling);
		}
		
		public function endFill():void
		{
			return graphics.endFill();
		}
		
		public function lineBitmapStyle(bitmap:BitmapData, matrix:Matrix=null, repeat:Boolean=true, smooth:Boolean=false):void
		{
			return graphics.lineBitmapStyle(bitmap, matrix, repeat, smooth);
		}
		
		public function lineGradientStyle(type:String, colors:Array, alphas:Array, ratios:Array, matrix:Matrix=null, spreadMethod:String="pad", interpolationMethod:String="rgb", focalPointRatio:Number=0):void
		{
			return graphics.lineGradientStyle(type, colors, alphas, ratios, matrix, spreadMethod, interpolationMethod, focalPointRatio);
		}
		
		public function lineShaderStyle(shader:Shader, matrix:Matrix=null):void
		{
			return graphics.lineShaderStyle(shader, matrix);
		}
		
		public function lineStyle(thickness:Number=NaN, color:uint=0, alpha:Number=1.0, pixelHinting:Boolean=false, scaleMode:String="normal", caps:String=null, joints:String=null, miterLimit:Number=3):void
		{
			return graphics.lineStyle(thickness, color, alpha, pixelHinting, scaleMode, caps, joints, miterLimit);
		}
		
		public function lineTo(x:Number, y:Number):void
		{
			return graphics.lineTo(x, y);
		}
		
		public function moveTo(x:Number, y:Number):void
		{
			return graphics.moveTo(x, y);
		}
	}
}
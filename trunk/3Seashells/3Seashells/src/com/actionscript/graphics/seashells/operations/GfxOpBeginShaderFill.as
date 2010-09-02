package com.actionscript.graphics.seashells.operations
{
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.canvases.interfaces.ICanvas;
	
	import flash.display.Graphics;
	import flash.display.Shader;
	import flash.geom.Matrix;
	
	public class GfxOpBeginShaderFill extends AbstractGraphicOperation
	{
		internal var _shader:Shader;
		internal var _matrix:Matrix;
		
		public function GfxOpBeginShaderFill(canvas:ICanvas, shader:Shader, matrix:Matrix = null)
		{
			super(canvas);
			_shader = shader;
			_matrix = matrix;
		}
		
		override public function render():void {
			IContextFlash(canvas).beginShaderFill(_shader, _matrix);
		}
	}
}
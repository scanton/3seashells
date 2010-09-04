package com.actionscript.graphics.seashells.operations
{
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	
	import flash.display.Shader;
	import flash.geom.Matrix;
	
	public class GfxOpLineShaderStyle extends AbstractGraphicOperation
	{
		internal var _shader:Shader;
		internal var _matrix:Matrix = null;
		
		public function GfxOpLineShaderStyle(canvas:IContextFlash, shader:Shader, matrix:Matrix = null)
		{
			super(canvas);
			_shader = shader;
			_matrix = matrix;
		}
		
		override public function render():void {
			IContextFlash(canvas).lineShaderStyle(_shader, _matrix);
		}
	}
}
package com.actionscript.graphics.heavyflash.operations.seashellmaps
{
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.operations.GfxOpBeginShaderFill;
	
	import flash.display.Shader;
	import flash.geom.Matrix;
	
	public class HfxBeginShaderFill extends GfxOpBeginShaderFill
	{
		public function HfxBeginShaderFill(canvas:IContextFlash, shader:Shader, matrix:Matrix=null)
		{
			super(canvas, shader, matrix);
		}
	}
}
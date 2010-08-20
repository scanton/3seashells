package com.actionscript.graphics.heavyflash.operations.seashellmaps
{
	import com.actionscript.graphics.heavyflash.operations.interfaces.IHeavyOperation;
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.operations.GfxOpLineShaderStyle;
	
	import flash.display.Shader;
	import flash.geom.Matrix;
	import flash.geom.Rectangle;
	
	public class HfxLineShaderStyle extends GfxOpLineShaderStyle implements IHeavyOperation
	{
		public function HfxLineShaderStyle(canvas:IContextFlash, shader:Shader, matrix:Matrix=null)
		{
			super(canvas, shader, matrix);
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
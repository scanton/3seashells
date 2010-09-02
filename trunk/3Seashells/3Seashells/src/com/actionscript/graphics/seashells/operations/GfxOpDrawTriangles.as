package com.actionscript.graphics.seashells.operations
{
	import com.actionscript.graphics.seashells.canvases.contexts.interfaces.IContextFlash;
	import com.actionscript.graphics.seashells.canvases.interfaces.ICanvas;
	
	public class GfxOpDrawTriangles extends AbstractGraphicOperation
	{
		internal var _vertices:Vector.<Number>;
		internal var _indices:Vector.<int> = null;
		internal var _uvtData:Vector.<Number> = null;
		internal var _culling:String = "none";
		
		public function GfxOpDrawTriangles(canvas:ICanvas, vertices:Vector.<Number>, indices:Vector.<int> = null, uvtData:Vector.<Number> = null, culling:String = "none")
		{
			super(canvas);
			_vertices = vertices;
			_indices = indices;
			_uvtData = uvtData;
			_culling = culling;
		}
		
		override public function render():void {
			IContextFlash(canvas).drawTriangles(_vertices, _indices, _uvtData, _culling);
		}
	}
}
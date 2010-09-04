package com.actionscript.graphics.heavyflash.geom
{
	import com.actionscript.graphics.heavyflash.geom.interfaces.IHeavyMatrix;
	
	import flash.geom.Matrix;
	import flash.geom.Rectangle;
	
	public class BoundMatrix extends Matrix implements IHeavyMatrix
	{
		public function BoundMatrix(rect:Rectangle, rotation:Number)
		{
			super(1, 0, 0, 1, rect.x, rect.y);
			createBox(rect.width, rect.height, rotation, rect.x, rect.y);
		}
	}
}
package com.actionscript.graphics.heavyflash.geom
{
	import com.actionscript.graphics.heavyflash.geom.interfaces.IHeavyMatrix;
	
	import flash.geom.Rectangle;
	
	public class HeavyMatrix extends BoundMatrix implements IHeavyMatrix
	{
		public function HeavyMatrix(rect:Rectangle, rotation:Number)
		{
				super(rect, rotation);
				this.createGradientBox(rect.width, rect.height, rotation, rect.x, rect.y);
		}
	}
}
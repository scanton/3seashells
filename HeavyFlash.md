#Heavy Flash Library - Extension of 3Seashells

# Introduction #

Heavy Flash is a Flash library (developed by Satori Canton and ActionScript.com) that extends 3Seashells.  HeavyFlash includes features like:
**HeavyRenderer - can be used both as a 3Seashells Renderer class, but also as a GraphicOperation (e.g. it can be added to another renderer)** HeavyPoint - an extension of the flash.geom.Point class.  A HeavyPoint includes some trig functionality to calculate relative points by angle and distance from an original HeavyPoint.
**Hfx Library - an abstraction of the 3Seashell GfxOp classes.  Hfx operations use a slightly different (Rectangle based) system for describing the size of an area to be drawn.  Hfx library also includes HfxPrimative which can be used for drawing complex shapes like starbursts.**

# Details #

HeavyFlash is a Flash library that extends 3Seashells (now included with 3Seashells).

HeavyFlash incudes some specific functional improvements over 3Seashells, including:

**HeavyRenderer - The HeavyFlash renderer can be used as a Renderer for any 3Seashells canvas.  However, an instance of HeavyRenderer can also be added to a regular 3Seashells Renderer as though it were a single graphic operation.  This is ideal for representing complex operations in a single instance of a HeavyRenderer.**

**HeavyPoint - an extension of the flash.geom.Point class.  A HeavyPoint includes some trig functionality to calculate relative points by angle and distance from an original HeavyPoint.  This is useful when drawing circles, or other curves that radiate from a common point.**

**Hfx Library - an abstraction of the 3Seashell GfxOp classes (all 3Seashell graphic operations begin with GfxOp, all HeavyFlash operations begin with Hfx).  Hfx operations use a slightly different (Rectangle based) system for describing the size of an area to be drawn.  This makes it easier to visualize and place the visual items that the system will render.**

**HfxPrimative - Hfx library also includes HfxPrimative which can be used for drawing complex shapes like starbursts.**

**ColorUtils - Satori Canton's ColorUtils class from ActionScript.com**

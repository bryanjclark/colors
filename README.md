# COLORS

This is an iOS-flavored fork of [clrs.cc](http://clrs.cc "Colors: Redefining the default web colors."), implemented as an Objective-C category so iOS developers can use these colors easily.

# Better colors for your iOS prototypes.

![iOS screenshot](http://f.cl.ly/items/1u0B2F2T0C0R2G3V1a0T/colors_screenshot.png)

View the original project page at [http://clrs.cc](http://clrs.cc "Colors: Redefining the default web colors.")

# What is this?

(To paraphrase clrs.cc): this is a simple color palette for your apps. Out of the box, the standard iOS colors (blueColor, redColor, greenColor, etc) aren't... the tops. This is an Objective-C category that should help fix that.

## Getting started

Drag these two files into your project:

```
UIColors+Colors.h
UIColors+Colors.m
```

...then, anywhere you'd like to reference these colors, import the color palette like so:

```
#import "UIColor+Colors.h"
```

...and now you can access these colors like so:

```
self.view.backgroundColor = [UIColor betterOliveColor];
self.titleLabel.textColor = [UIColor betterBlackColor];
```

Here's the full list of color names:

```
clrs_navyColor
clrs_blueColor
clrs_aquaColor
clrs_tealColor
clrs_oliveColor
clrs_greenColor
clrs_limeColor
clrs_yellowColor
clrs_orangeColor
clrs_redColor
clrs_fuchsiaColor
clrs_purpleColor
clrs_maroonColor
clrs_whiteColor
clrs_silverColor
clrs_grayColor
clrs_blackColor
```

# Author
Original author & creator of the palette:
[MRMRS](http://mrmrs.cc "Adam Morse - Designer + Developer in SF")

Author of the objective-c code here:
[bryanjclark](http://bryanjclark.com "Bryan Clark - iOS Designer & Developer in Seattle")

# License (for @mrmrs)

The MIT License (MIT)

Copyright (c) 2014 @mrmrs

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

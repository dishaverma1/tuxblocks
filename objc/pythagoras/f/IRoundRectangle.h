//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/IRoundRectangle.java
//
//  Created by Thomas on 7/1/13.
//

@class PythagorasFRoundRectangle;

#import "JreEmulation.h"
#import "IRectangularShape.h"

@protocol PythagorasFIRoundRectangle < PythagorasFIRectangularShape, NSCopying, NSObject >
- (float)arcWidth;
- (float)arcHeight;
- (PythagorasFRoundRectangle *)clone;
- (id)copyWithZone:(NSZone *)zone;
@end
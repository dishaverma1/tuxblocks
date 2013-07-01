//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/gl/SurfaceImageGL.java
//
//  Created by Thomas on 7/1/13.
//

#import "AbstractImageGL.h"
#import "Callback.h"
#import "GLContext.h"
#import "GLShader.h"
#import "Image.h"
#import "ImageRegionGL.h"
#import "InternalTransform.h"
#import "Pattern.h"
#import "Scale.h"
#import "Surface.h"
#import "SurfaceGL.h"
#import "java/lang/UnsupportedOperationException.h"

@implementation PlaynCoreGlSurfaceImageGL

- (PlaynCoreGlSurfaceGL *)surface_ {
  return surface__;
}
- (void)setSurface_:(PlaynCoreGlSurfaceGL *)surface_ {
  JreOperatorRetainedAssign(&surface__, self, surface_);
}
@synthesize surface_ = surface__;

- (id)initWithPlaynCoreGlGLContext:(PlaynCoreGlGLContext *)ctx
          withPlaynCoreGlSurfaceGL:(PlaynCoreGlSurfaceGL *)surface {
  if ((self = [super initWithPlaynCoreGlGLContext:ctx])) {
    self.surface_ = surface;
  }
  return self;
}

- (id<PlaynCoreSurface>)surface {
  return surface__;
}

- (void)destroy {
  [((PlaynCoreGlSurfaceGL *) NIL_CHK(surface__)) destroy];
}

- (float)width {
  return [((PlaynCoreGlSurfaceGL *) NIL_CHK(surface__)) width];
}

- (float)height {
  return [((PlaynCoreGlSurfaceGL *) NIL_CHK(surface__)) height];
}

- (PlaynCoreGlScale *)scale__ {
  return ((PlaynCoreGlGLContext *) NIL_CHK(ctx_)).scale_;
}

- (BOOL)isReady {
  return YES;
}

- (void)addCallbackWithPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)callback {
  [((id<PlaynCoreUtilCallback>) NIL_CHK(callback)) onSuccessWithId:self];
}

- (id<PlaynCoreImage_Region>)subImageWithFloat:(float)sx
                                     withFloat:(float)sy
                                     withFloat:(float)swidth
                                     withFloat:(float)sheight {
  return [[[PlaynCoreGlImageRegionGL alloc] initWithPlaynCoreGlAbstractImageGL:self withFloat:sx withFloat:sy withFloat:swidth withFloat:sheight] autorelease];
}

- (int)ensureTexture {
  return ((PlaynCoreGlSurfaceGL *) NIL_CHK(surface__)).tex;
}

- (void)clearTexture {
}

- (void)drawWithId:(id)gc
         withFloat:(float)dx
         withFloat:(float)dy
         withFloat:(float)dw
         withFloat:(float)dh {
  [self drawWithId:gc withFloat:dx withFloat:dy withFloat:dw withFloat:dh withFloat:0 withFloat:0 withFloat:[self width] withFloat:[self height]];
}

- (void)drawWithId:(id)gc
         withFloat:(float)sx
         withFloat:(float)sy
         withFloat:(float)sw
         withFloat:(float)sh
         withFloat:(float)dx
         withFloat:(float)dy
         withFloat:(float)dw
         withFloat:(float)dh {
  @throw [[[JavaLangUnsupportedOperationException alloc] initWithNSString:@"SurfaceImage cannot currently be drawn into a Canvas."] autorelease];
}

- (void)drawImplWithPlaynCoreGlGLShader:(PlaynCoreGlGLShader *)shader
         withPlaynCoreInternalTransform:(id<PlaynCoreInternalTransform>)xform
                                withInt:(int)tex
                                withInt:(int)tint
                              withFloat:(float)dx
                              withFloat:(float)dy
                              withFloat:(float)dw
                              withFloat:(float)dh
                              withFloat:(float)sl
                              withFloat:(float)st
                              withFloat:(float)sr
                              withFloat:(float)sb {
  if (tex > 0) {
    [[[((PlaynCoreGlGLContext *) NIL_CHK(ctx_)) quadShaderWithPlaynCoreGlGLShader:shader] prepareTextureWithInt:tex withInt:tint] addQuadWithPlaynCoreInternalTransform:xform withFloat:dx withFloat:dy withFloat:dx + dw withFloat:dy + dh withFloat:sl withFloat:1 - st withFloat:sr withFloat:1 - sb];
  }
}

- (id<PlaynCorePattern>)toSubPatternWithPlaynCoreGlAbstractImageGL:(PlaynCoreGlAbstractImageGL *)image
                                                          withBOOL:(BOOL)repeatX
                                                          withBOOL:(BOOL)repeatY
                                                         withFloat:(float)x
                                                         withFloat:(float)y
                                                         withFloat:(float)width
                                                         withFloat:(float)height {
  return [[[PlaynCoreGlSurfaceImageGL_$1 alloc] initWithBOOL:repeatX withBOOL:repeatY withPlaynCoreGlAbstractImageGL:image] autorelease];
}

- (void)dealloc {
  JreOperatorRetainedAssign(&surface__, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreGlSurfaceImageGL *typedCopy = (PlaynCoreGlSurfaceImageGL *) copy;
  typedCopy.surface_ = surface__;
}

@end
@implementation PlaynCoreGlSurfaceImageGL_$1

@synthesize val$repeatX = val$repeatX_;
@synthesize val$repeatY = val$repeatY_;
- (PlaynCoreGlAbstractImageGL *)val$image {
  return val$image_;
}
- (void)setVal$image:(PlaynCoreGlAbstractImageGL *)val$image {
  JreOperatorRetainedAssign(&val$image_, self, val$image);
}
@synthesize val$image = val$image_;

- (BOOL)repeatX {
  return val$repeatX_;
}

- (BOOL)repeatY {
  return val$repeatY_;
}

- (PlaynCoreGlAbstractImageGL *)image {
  return val$image_;
}

- (id)initWithBOOL:(BOOL)capture$0
          withBOOL:(BOOL)capture$1
withPlaynCoreGlAbstractImageGL:(PlaynCoreGlAbstractImageGL *)capture$2 {
  if ((self = [super init])) {
    val$repeatX_ = capture$0;
    val$repeatY_ = capture$1;
    JreOperatorRetainedAssign(&val$image_, self, capture$2);
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&val$image_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreGlSurfaceImageGL_$1 *typedCopy = (PlaynCoreGlSurfaceImageGL_$1 *) copy;
  typedCopy.val$repeatX = val$repeatX_;
  typedCopy.val$repeatY = val$repeatY_;
  typedCopy.val$image = val$image_;
}

@end
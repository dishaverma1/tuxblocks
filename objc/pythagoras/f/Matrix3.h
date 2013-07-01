//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/Matrix3.java
//
//  Created by Thomas on 7/1/13.
//

@class IOSFloatArray;
@class JavaNioFloatBuffer;
@class PythagorasFVector3;
@class PythagorasFVector;
@protocol PythagorasFIQuaternion;
@protocol PythagorasFIVector3;
@protocol PythagorasFIVector;

#import "JreEmulation.h"
#import "IMatrix3.h"
#import "java/io/Serializable.h"

@interface PythagorasFMatrix3 : NSObject < PythagorasFIMatrix3, JavaIoSerializable > {
 @public
  float m00__, m10__, m20__;
  float m01__, m11__, m21__;
  float m02__, m12__, m22__;
}

@property (nonatomic, assign) float m00_;
@property (nonatomic, assign) float m10_;
@property (nonatomic, assign) float m20_;
@property (nonatomic, assign) float m01_;
@property (nonatomic, assign) float m11_;
@property (nonatomic, assign) float m21_;
@property (nonatomic, assign) float m02_;
@property (nonatomic, assign) float m12_;
@property (nonatomic, assign) float m22_;

+ (PythagorasFMatrix3 *)IDENTITY;
- (id)initWithFloat:(float)m00
          withFloat:(float)m10
          withFloat:(float)m20
          withFloat:(float)m01
          withFloat:(float)m11
          withFloat:(float)m21
          withFloat:(float)m02
          withFloat:(float)m12
          withFloat:(float)m22;
- (id)initWithJavaLangFloatArray:(IOSFloatArray *)values;
- (id)initWithPythagorasFMatrix3:(PythagorasFMatrix3 *)other;
- (id)init;
- (void)setElementWithInt:(int)row
                  withInt:(int)col
                withFloat:(float)value;
- (void)setRowWithInt:(int)row
            withFloat:(float)x
            withFloat:(float)y
            withFloat:(float)z;
- (void)setRowWithInt:(int)row
withPythagorasFVector3:(PythagorasFVector3 *)v;
- (void)setColumnWithInt:(int)col
               withFloat:(float)x
               withFloat:(float)y
               withFloat:(float)z;
- (void)setColumnWithInt:(int)col
  withPythagorasFVector3:(PythagorasFVector3 *)v;
- (PythagorasFMatrix3 *)setToIdentity;
- (PythagorasFMatrix3 *)setToZero;
- (PythagorasFMatrix3 *)setToRotationWithPythagorasFIVector3:(id<PythagorasFIVector3>)from
                                     withPythagorasFIVector3:(id<PythagorasFIVector3>)to;
- (PythagorasFMatrix3 *)setToRotationWithFloat:(float)angle
                       withPythagorasFIVector3:(id<PythagorasFIVector3>)axis;
- (PythagorasFMatrix3 *)setToRotationWithFloat:(float)angle
                                     withFloat:(float)x
                                     withFloat:(float)y
                                     withFloat:(float)z;
- (PythagorasFMatrix3 *)setToRotationWithPythagorasFIQuaternion:(id<PythagorasFIQuaternion>)quat;
- (PythagorasFMatrix3 *)setToScaleWithPythagorasFIVector3:(id<PythagorasFIVector3>)scale_;
- (PythagorasFMatrix3 *)setToScaleWithFloat:(float)s;
- (PythagorasFMatrix3 *)setToScaleWithFloat:(float)x
                                  withFloat:(float)y
                                  withFloat:(float)z;
- (PythagorasFMatrix3 *)setToReflectionWithPythagorasFIVector3:(id<PythagorasFIVector3>)normal;
- (PythagorasFMatrix3 *)setToReflectionWithFloat:(float)x
                                       withFloat:(float)y
                                       withFloat:(float)z;
- (PythagorasFMatrix3 *)setToTransformWithPythagorasFIVector:(id<PythagorasFIVector>)translation
                                                   withFloat:(float)rotation;
- (PythagorasFMatrix3 *)setToTransformWithPythagorasFIVector:(id<PythagorasFIVector>)translation
                                                   withFloat:(float)rotation
                                                   withFloat:(float)scale_;
- (PythagorasFMatrix3 *)setToTransformWithPythagorasFIVector:(id<PythagorasFIVector>)translation
                                                   withFloat:(float)rotation
                                      withPythagorasFIVector:(id<PythagorasFIVector>)scale_;
- (PythagorasFMatrix3 *)setToTranslationWithPythagorasFIVector:(id<PythagorasFIVector>)translation;
- (PythagorasFMatrix3 *)setToTranslationWithFloat:(float)x
                                        withFloat:(float)y;
- (PythagorasFMatrix3 *)setTranslationWithPythagorasFIVector:(id<PythagorasFIVector>)translation;
- (PythagorasFMatrix3 *)setTranslationWithFloat:(float)x
                                      withFloat:(float)y;
- (PythagorasFMatrix3 *)setToRotationWithFloat:(float)angle;
- (PythagorasFMatrix3 *)transposeLocal;
- (PythagorasFMatrix3 *)multLocalWithPythagorasFIMatrix3:(id<PythagorasFIMatrix3>)other;
- (PythagorasFMatrix3 *)addLocalWithPythagorasFIMatrix3:(id<PythagorasFIMatrix3>)other;
- (PythagorasFMatrix3 *)multAffineLocalWithPythagorasFIMatrix3:(id<PythagorasFIMatrix3>)other;
- (PythagorasFMatrix3 *)invertLocal;
- (PythagorasFMatrix3 *)invertAffineLocal;
- (PythagorasFMatrix3 *)lerpLocalWithPythagorasFIMatrix3:(id<PythagorasFIMatrix3>)other
                                               withFloat:(float)t;
- (PythagorasFMatrix3 *)lerpAffineLocalWithPythagorasFIMatrix3:(id<PythagorasFIMatrix3>)other
                                                     withFloat:(float)t;
- (PythagorasFMatrix3 *)setWithPythagorasFIMatrix3:(id<PythagorasFIMatrix3>)other;
- (PythagorasFMatrix3 *)setWithJavaLangFloatArray:(IOSFloatArray *)values;
- (PythagorasFMatrix3 *)setWithFloat:(float)m00
                           withFloat:(float)m10
                           withFloat:(float)m20
                           withFloat:(float)m01
                           withFloat:(float)m11
                           withFloat:(float)m21
                           withFloat:(float)m02
                           withFloat:(float)m12
                           withFloat:(float)m22;
- (float)m00;
- (float)m10;
- (float)m20;
- (float)m01;
- (float)m11;
- (float)m21;
- (float)m02;
- (float)m12;
- (float)m22;
- (float)elementWithInt:(int)row
                withInt:(int)col;
- (void)getRowWithInt:(int)row
withPythagorasFVector3:(PythagorasFVector3 *)result;
- (void)getColumnWithInt:(int)col
  withPythagorasFVector3:(PythagorasFVector3 *)result;
- (PythagorasFMatrix3 *)transpose;
- (PythagorasFMatrix3 *)transposeWithPythagorasFMatrix3:(PythagorasFMatrix3 *)result;
- (PythagorasFMatrix3 *)multWithPythagorasFIMatrix3:(id<PythagorasFIMatrix3>)other;
- (PythagorasFMatrix3 *)multWithPythagorasFIMatrix3:(id<PythagorasFIMatrix3>)other
                             withPythagorasFMatrix3:(PythagorasFMatrix3 *)result;
- (PythagorasFMatrix3 *)addWithPythagorasFIMatrix3:(id<PythagorasFIMatrix3>)other;
- (PythagorasFMatrix3 *)addWithPythagorasFIMatrix3:(id<PythagorasFIMatrix3>)other
                            withPythagorasFMatrix3:(PythagorasFMatrix3 *)result;
- (BOOL)isAffine;
- (PythagorasFMatrix3 *)multAffineWithPythagorasFIMatrix3:(id<PythagorasFIMatrix3>)other;
- (PythagorasFMatrix3 *)multAffineWithPythagorasFIMatrix3:(id<PythagorasFIMatrix3>)other
                                   withPythagorasFMatrix3:(PythagorasFMatrix3 *)result;
- (PythagorasFMatrix3 *)invert;
- (PythagorasFMatrix3 *)invertWithPythagorasFMatrix3:(PythagorasFMatrix3 *)result;
- (PythagorasFMatrix3 *)invertAffine;
- (PythagorasFMatrix3 *)invertAffineWithPythagorasFMatrix3:(PythagorasFMatrix3 *)result;
- (PythagorasFMatrix3 *)lerpWithPythagorasFIMatrix3:(id<PythagorasFIMatrix3>)other
                                          withFloat:(float)t;
- (PythagorasFMatrix3 *)lerpWithPythagorasFIMatrix3:(id<PythagorasFIMatrix3>)other
                                          withFloat:(float)t
                             withPythagorasFMatrix3:(PythagorasFMatrix3 *)result;
- (PythagorasFMatrix3 *)lerpAffineWithPythagorasFIMatrix3:(id<PythagorasFIMatrix3>)other
                                                withFloat:(float)t;
- (PythagorasFMatrix3 *)lerpAffineWithPythagorasFIMatrix3:(id<PythagorasFIMatrix3>)other
                                                withFloat:(float)t
                                   withPythagorasFMatrix3:(PythagorasFMatrix3 *)result;
- (JavaNioFloatBuffer *)getWithJavaNioFloatBuffer:(JavaNioFloatBuffer *)buf;
- (PythagorasFVector3 *)transformLocalWithPythagorasFVector3:(PythagorasFVector3 *)vector;
- (PythagorasFVector3 *)transformWithPythagorasFIVector3:(id<PythagorasFIVector3>)vector;
- (PythagorasFVector3 *)transformWithPythagorasFIVector3:(id<PythagorasFIVector3>)vector
                                  withPythagorasFVector3:(PythagorasFVector3 *)result;
- (PythagorasFVector *)transformPointLocalWithPythagorasFVector:(PythagorasFVector *)point;
- (PythagorasFVector *)transformPointWithPythagorasFIVector:(id<PythagorasFIVector>)point;
- (PythagorasFVector *)transformPointWithPythagorasFIVector:(id<PythagorasFIVector>)point
                                      withPythagorasFVector:(PythagorasFVector *)result;
- (PythagorasFVector *)transformVectorLocalWithPythagorasFVector:(PythagorasFVector *)vector;
- (PythagorasFVector *)transformVectorWithPythagorasFIVector:(id<PythagorasFIVector>)vector;
- (PythagorasFVector *)transformVectorWithPythagorasFIVector:(id<PythagorasFIVector>)vector
                                       withPythagorasFVector:(PythagorasFVector *)result;
- (float)extractRotation;
- (PythagorasFVector *)extractScale;
- (PythagorasFVector *)extractScaleWithPythagorasFVector:(PythagorasFVector *)result;
- (float)approximateUniformScale;
- (NSString *)description;
- (NSUInteger)hash;
- (BOOL)isEqual:(id)other;
@end
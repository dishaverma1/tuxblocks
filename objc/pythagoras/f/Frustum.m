//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/Frustum.java
//
//  Created by Thomas on 7/1/13.
//

#import "Box.h"
#import "FloatMath.h"
#import "IOSObjectArray.h"
#import "IVector3.h"
#import "Matrix3.h"
#import "Plane.h"
#import "Vector3.h"
#import "java/lang/Float.h"
#import "java/lang/IllegalArgumentException.h"
#import "java/lang/Math.h"

@implementation PythagorasFFrustum

static PythagorasFVector3 * PythagorasFFrustum__vertex_;

- (IOSObjectArray *)_vertices {
  return _vertices_;
}
- (void)set_vertices:(IOSObjectArray *)_vertices {
  JreOperatorRetainedAssign(&_vertices_, self, _vertices);
}
@synthesize _vertices = _vertices_;
- (IOSObjectArray *)_planes {
  return _planes_;
}
- (void)set_planes:(IOSObjectArray *)_planes {
  JreOperatorRetainedAssign(&_planes_, self, _planes);
}
@synthesize _planes = _planes_;
- (PythagorasFBox *)_bounds {
  return _bounds_;
}
- (void)set_bounds:(PythagorasFBox *)_bounds {
  JreOperatorRetainedAssign(&_bounds_, self, _bounds);
}
@synthesize _bounds = _bounds_;

+ (PythagorasFVector3 *)_vertex {
  return PythagorasFFrustum__vertex_;
}

+ (void)set_vertex:(PythagorasFVector3 *)_vertex {
  JreOperatorRetainedAssign(&PythagorasFFrustum__vertex_, self, _vertex);
}

- (id)init {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&_vertices_, self, [[[IOSObjectArray alloc] initWithLength:8 type:[IOSClass classWithClass:[PythagorasFVector3 class]]] autorelease]);
    JreOperatorRetainedAssign(&_planes_, self, [[[IOSObjectArray alloc] initWithLength:6 type:[IOSClass classWithClass:[PythagorasFPlane class]]] autorelease]);
    JreOperatorRetainedAssign(&_bounds_, self, [[[PythagorasFBox alloc] init] autorelease]);
    for (int ii = 0; ii < 8; ii++) {
      [((IOSObjectArray *) NIL_CHK(_vertices_)) replaceObjectAtIndex:ii withObject:[[[PythagorasFVector3 alloc] init] autorelease]];
    }
    for (int ii = 0; ii < 6; ii++) {
      [((IOSObjectArray *) NIL_CHK(_planes_)) replaceObjectAtIndex:ii withObject:[[[PythagorasFPlane alloc] init] autorelease]];
    }
  }
  return self;
}

- (IOSObjectArray *)vertices {
  return _vertices_;
}

- (PythagorasFBox *)bounds {
  return _bounds_;
}

- (PythagorasFFrustum *)setToPerspectiveWithFloat:(float)fovy
                                        withFloat:(float)aspect
                                        withFloat:(float)znear
                                        withFloat:(float)zfar {
  float top = znear * [PythagorasFFloatMath tanWithFloat:fovy / 2.0f], bottom = -top;
  float right = top * aspect, left = -right;
  return [self setToFrustumWithFloat:left withFloat:right withFloat:bottom withFloat:top withFloat:znear withFloat:zfar];
}

- (PythagorasFFrustum *)setToFrustumWithFloat:(float)left
                                    withFloat:(float)right
                                    withFloat:(float)bottom
                                    withFloat:(float)top
                                    withFloat:(float)near
                                    withFloat:(float)far {
  return [self setToProjectionWithFloat:left withFloat:right withFloat:bottom withFloat:top withFloat:near withFloat:far withPythagorasFIVector3:[PythagorasFVector3 UNIT_Z] withBOOL:NO withBOOL:NO];
}

- (PythagorasFFrustum *)setToOrthoWithFloat:(float)left
                                  withFloat:(float)right
                                  withFloat:(float)bottom
                                  withFloat:(float)top
                                  withFloat:(float)near
                                  withFloat:(float)far {
  return [self setToProjectionWithFloat:left withFloat:right withFloat:bottom withFloat:top withFloat:near withFloat:far withPythagorasFIVector3:[PythagorasFVector3 UNIT_Z] withBOOL:YES withBOOL:NO];
}

- (PythagorasFFrustum *)setToProjectionWithFloat:(float)left
                                       withFloat:(float)right
                                       withFloat:(float)bottom
                                       withFloat:(float)top
                                       withFloat:(float)near
                                       withFloat:(float)far
                         withPythagorasFIVector3:(id<PythagorasFIVector3>)nearFarNormal
                                        withBOOL:(BOOL)ortho
                                        withBOOL:(BOOL)mirrored {
  float nfnx = [((id<PythagorasFIVector3>) NIL_CHK(nearFarNormal)) x], nfny = [((id<PythagorasFIVector3>) NIL_CHK(nearFarNormal)) y], nfnz = [((id<PythagorasFIVector3>) NIL_CHK(nearFarNormal)) z];
  if (ortho) {
    float nrz = -1.0f / nfnz;
    float xl = nfnx * left * nrz, xr = nfnx * right * nrz;
    float yb = nfny * bottom * nrz, yt = nfny * top * nrz;
    (void) [((PythagorasFVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:0]) setWithFloat:left withFloat:bottom withFloat:xl + yb - near];
    (void) [((PythagorasFVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:mirrored ? 3 : 1]) setWithFloat:right withFloat:bottom withFloat:xr + yb - near];
    (void) [((PythagorasFVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:2]) setWithFloat:right withFloat:top withFloat:xr + yt - near];
    (void) [((PythagorasFVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:mirrored ? 1 : 3]) setWithFloat:left withFloat:top withFloat:xl + yt - near];
    (void) [((PythagorasFVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:4]) setWithFloat:left withFloat:bottom withFloat:xl + yb - far];
    (void) [((PythagorasFVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:mirrored ? 7 : 5]) setWithFloat:right withFloat:bottom withFloat:xr + yb - far];
    (void) [((PythagorasFVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:6]) setWithFloat:right withFloat:top withFloat:xr + yt - far];
    (void) [((PythagorasFVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:mirrored ? 5 : 7]) setWithFloat:left withFloat:top withFloat:xl + yt - far];
  }
  else {
    float rn = 1.0f / near;
    float lrn = left * rn, rrn = right * rn;
    float brn = bottom * rn, trn = top * rn;
    float nz = near * nfnz;
    float z0 = nz / (nfnx * lrn + nfny * brn - nfnz);
    (void) [((PythagorasFVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:0]) setWithFloat:-z0 * lrn withFloat:-z0 * brn withFloat:z0];
    float z1 = nz / (nfnx * rrn + nfny * brn - nfnz);
    (void) [((PythagorasFVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:mirrored ? 3 : 1]) setWithFloat:-z1 * rrn withFloat:-z1 * brn withFloat:z1];
    float z2 = nz / (nfnx * rrn + nfny * trn - nfnz);
    (void) [((PythagorasFVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:2]) setWithFloat:-z2 * rrn withFloat:-z2 * trn withFloat:z2];
    float z3 = nz / (nfnx * lrn + nfny * trn - nfnz);
    (void) [((PythagorasFVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:mirrored ? 1 : 3]) setWithFloat:-z3 * lrn withFloat:-z3 * trn withFloat:z3];
    float fz = far * nfnz;
    float z4 = fz / (nfnx * lrn + nfny * brn - nfnz);
    (void) [((PythagorasFVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:4]) setWithFloat:-z4 * lrn withFloat:-z4 * brn withFloat:z4];
    float z5 = fz / (nfnx * rrn + nfny * brn - nfnz);
    (void) [((PythagorasFVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:mirrored ? 7 : 5]) setWithFloat:-z5 * rrn withFloat:-z5 * brn withFloat:z5];
    float z6 = fz / (nfnx * rrn + nfny * trn - nfnz);
    (void) [((PythagorasFVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:6]) setWithFloat:-z6 * rrn withFloat:-z6 * trn withFloat:z6];
    float z7 = fz / (nfnx * lrn + nfny * trn - nfnz);
    (void) [((PythagorasFVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:mirrored ? 5 : 7]) setWithFloat:-z7 * lrn withFloat:-z7 * trn withFloat:z7];
  }
  [self updateDerivedState];
  return self;
}

- (float)distanceWithPythagorasFVector3:(PythagorasFVector3 *)point {
  float distance = -JavaLangFloat_MAX_VALUE;
  {
    IOSObjectArray *a__ = _planes_;
    int n__ = (int) [((IOSObjectArray *) NIL_CHK(a__)) count];
    for (int i__ = 0; i__ < n__; i__++) {
      PythagorasFPlane *plane = ((PythagorasFPlane *) [((IOSObjectArray *) NIL_CHK(a__)) objectAtIndex:i__]);
      distance = [JavaLangMath maxWithFloat:distance withFloat:[((PythagorasFPlane *) NIL_CHK(plane)) distanceWithPythagorasFIVector3:point]];
    }
  }
  return distance;
}

- (PythagorasFFrustum_IntersectionTypeEnum *)intersectionTypeWithPythagorasFBox:(PythagorasFBox *)box {
  if (![((PythagorasFBox *) NIL_CHK(_bounds_)) intersectsWithPythagorasFIBox:box]) {
    return [PythagorasFFrustum_IntersectionTypeEnum NONE];
  }
  int ccount = 0;
  for (int ii = 0; ii < 6; ii++) {
    int inside = 0;
    PythagorasFPlane *plane = ((PythagorasFPlane *) [((IOSObjectArray *) NIL_CHK(_planes_)) objectAtIndex:ii]);
    for (int jj = 0; jj < 8; jj++) {
      if ([((PythagorasFPlane *) NIL_CHK(plane)) distanceWithPythagorasFIVector3:[((PythagorasFBox *) NIL_CHK(box)) vertexWithInt:jj withPythagorasFVector3:PythagorasFFrustum__vertex_]] <= 0.0f) {
        inside++;
      }
    }
    if (inside == 0) {
      return [PythagorasFFrustum_IntersectionTypeEnum NONE];
    }
    else if (inside == 8) {
      ccount++;
    }
  }
  return (ccount == 6) ? [PythagorasFFrustum_IntersectionTypeEnum CONTAINS] : [PythagorasFFrustum_IntersectionTypeEnum INTERSECTS];
}

- (PythagorasFBox *)boundsUnderRotationWithPythagorasFMatrix3:(PythagorasFMatrix3 *)matrix
                                           withPythagorasFBox:(PythagorasFBox *)result {
  (void) [((PythagorasFBox *) NIL_CHK(result)) setToEmpty];
  {
    IOSObjectArray *a__ = _vertices_;
    int n__ = (int) [((IOSObjectArray *) NIL_CHK(a__)) count];
    for (int i__ = 0; i__ < n__; i__++) {
      PythagorasFVector3 *vertex = ((PythagorasFVector3 *) [((IOSObjectArray *) NIL_CHK(a__)) objectAtIndex:i__]);
      (void) [((PythagorasFBox *) NIL_CHK(result)) addLocalWithPythagorasFIVector3:[((PythagorasFMatrix3 *) NIL_CHK(matrix)) transformWithPythagorasFIVector3:vertex withPythagorasFVector3:PythagorasFFrustum__vertex_]];
    }
  }
  return result;
}

- (void)updateDerivedState {
  (void) [((PythagorasFPlane *) [((IOSObjectArray *) NIL_CHK(_planes_)) objectAtIndex:0]) fromPointsWithPythagorasFIVector3:((PythagorasFVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:0]) withPythagorasFIVector3:((PythagorasFVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:1]) withPythagorasFIVector3:((PythagorasFVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:2])];
  (void) [((PythagorasFPlane *) [((IOSObjectArray *) NIL_CHK(_planes_)) objectAtIndex:1]) fromPointsWithPythagorasFIVector3:((PythagorasFVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:5]) withPythagorasFIVector3:((PythagorasFVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:4]) withPythagorasFIVector3:((PythagorasFVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:7])];
  (void) [((PythagorasFPlane *) [((IOSObjectArray *) NIL_CHK(_planes_)) objectAtIndex:2]) fromPointsWithPythagorasFIVector3:((PythagorasFVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:1]) withPythagorasFIVector3:((PythagorasFVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:5]) withPythagorasFIVector3:((PythagorasFVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:6])];
  (void) [((PythagorasFPlane *) [((IOSObjectArray *) NIL_CHK(_planes_)) objectAtIndex:3]) fromPointsWithPythagorasFIVector3:((PythagorasFVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:4]) withPythagorasFIVector3:((PythagorasFVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:0]) withPythagorasFIVector3:((PythagorasFVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:3])];
  (void) [((PythagorasFPlane *) [((IOSObjectArray *) NIL_CHK(_planes_)) objectAtIndex:4]) fromPointsWithPythagorasFIVector3:((PythagorasFVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:3]) withPythagorasFIVector3:((PythagorasFVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:2]) withPythagorasFIVector3:((PythagorasFVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:6])];
  (void) [((PythagorasFPlane *) [((IOSObjectArray *) NIL_CHK(_planes_)) objectAtIndex:5]) fromPointsWithPythagorasFIVector3:((PythagorasFVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:4]) withPythagorasFIVector3:((PythagorasFVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:5]) withPythagorasFIVector3:((PythagorasFVector3 *) [((IOSObjectArray *) NIL_CHK(_vertices_)) objectAtIndex:1])];
  (void) [((PythagorasFBox *) NIL_CHK(_bounds_)) fromPointsWithPythagorasFIVector3Array:_vertices_];
}

+ (void)initialize {
  if (self == [PythagorasFFrustum class]) {
    JreOperatorRetainedAssign(&PythagorasFFrustum__vertex_, self, [[[PythagorasFVector3 alloc] init] autorelease]);
  }
}

- (void)dealloc {
  JreOperatorRetainedAssign(&_bounds_, self, nil);
  JreOperatorRetainedAssign(&_planes_, self, nil);
  JreOperatorRetainedAssign(&_vertices_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PythagorasFFrustum *typedCopy = (PythagorasFFrustum *) copy;
  typedCopy._vertices = _vertices_;
  typedCopy._planes = _planes_;
  typedCopy._bounds = _bounds_;
}

@end

static PythagorasFFrustum_IntersectionTypeEnum *PythagorasFFrustum_IntersectionTypeEnum_NONE;
static PythagorasFFrustum_IntersectionTypeEnum *PythagorasFFrustum_IntersectionTypeEnum_INTERSECTS;
static PythagorasFFrustum_IntersectionTypeEnum *PythagorasFFrustum_IntersectionTypeEnum_CONTAINS;
IOSObjectArray *PythagorasFFrustum_IntersectionTypeEnum_values;

@implementation PythagorasFFrustum_IntersectionTypeEnum

+ (PythagorasFFrustum_IntersectionTypeEnum *)NONE {
  return PythagorasFFrustum_IntersectionTypeEnum_NONE;
}
+ (PythagorasFFrustum_IntersectionTypeEnum *)INTERSECTS {
  return PythagorasFFrustum_IntersectionTypeEnum_INTERSECTS;
}
+ (PythagorasFFrustum_IntersectionTypeEnum *)CONTAINS {
  return PythagorasFFrustum_IntersectionTypeEnum_CONTAINS;
}

- (id)copyWithZone:(NSZone *)zone {
  return [self retain];
}

- (id)initWithNSString:(NSString *)name withInt:(int)ordinal {
  return [super initWithNSString:name withInt:ordinal];
}

+ (void)initialize {
  if (self == [PythagorasFFrustum_IntersectionTypeEnum class]) {
    PythagorasFFrustum_IntersectionTypeEnum_NONE = [[PythagorasFFrustum_IntersectionTypeEnum alloc] initWithNSString:@"NONE" withInt:0];
    PythagorasFFrustum_IntersectionTypeEnum_INTERSECTS = [[PythagorasFFrustum_IntersectionTypeEnum alloc] initWithNSString:@"INTERSECTS" withInt:1];
    PythagorasFFrustum_IntersectionTypeEnum_CONTAINS = [[PythagorasFFrustum_IntersectionTypeEnum alloc] initWithNSString:@"CONTAINS" withInt:2];
    PythagorasFFrustum_IntersectionTypeEnum_values = [[IOSObjectArray alloc] initWithObjects:(id[]){ PythagorasFFrustum_IntersectionTypeEnum_NONE, PythagorasFFrustum_IntersectionTypeEnum_INTERSECTS, PythagorasFFrustum_IntersectionTypeEnum_CONTAINS, nil } count:3 type:[IOSClass classWithClass:[PythagorasFFrustum_IntersectionTypeEnum class]]];
  }
}

+ (IOSObjectArray *)values {
  return [IOSObjectArray arrayWithArray:PythagorasFFrustum_IntersectionTypeEnum_values];
}

+ (PythagorasFFrustum_IntersectionTypeEnum *)valueOfWithNSString:(NSString *)name {
  for (int i = 0; i < [PythagorasFFrustum_IntersectionTypeEnum_values count]; i++) {
    PythagorasFFrustum_IntersectionTypeEnum *e = [PythagorasFFrustum_IntersectionTypeEnum_values objectAtIndex:i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:name] autorelease];
  return nil;
}

@end
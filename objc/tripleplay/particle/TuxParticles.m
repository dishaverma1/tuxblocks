//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: C:\Users\Thomas\Documents\Eclipse\Tux\tuxblocks\core\src\main\java\tripleplay\particle\TuxParticles.java
//
//  Created by Thomas on 7/1/13.
//

#import "playn/core/GroupLayer.h"
#import "playn/core/Image.h"
#import "playn/core/ImmediateLayer.h"
#import "react/Connection.h"
#import "react/Signal.h"
#import "tripleplay/particle/Emitter.h"
#import "tripleplay/particle/Particles.h"
#import "tripleplay/particle/TuxEmitter.h"
#import "tripleplay/particle/TuxParticles.h"

@implementation TPTuxParticles

- (TPEmitter *)createEmitterWithInt:(int)maxParticles
                 withPlaynCoreImage:(id<PlaynCoreImage>)image
            withPlaynCoreGroupLayer:(id<PlaynCoreGroupLayer>)onLayer {
  TPTuxEmitter *emitter = [[[TPTuxEmitter alloc] initWithTPParticles:self withInt:maxParticles withPlaynCoreImage:image] autorelease];
  ((TPTuxEmitter *) NIL_CHK(emitter))._conn = [((ReactSignal *) NIL_CHK(_onPaint_)) connectWithReactSlot:[[[TPTuxParticles_$1 alloc] initWithTPTuxEmitter:emitter] autorelease]];
  [((id<PlaynCoreGroupLayer>) NIL_CHK(onLayer)) addWithPlaynCoreLayer:((TPTuxEmitter *) NIL_CHK(emitter)).layer];
  [((id<PlaynCoreGroupLayer>) NIL_CHK(onLayer)) addWithPlaynCoreLayer:((TPTuxEmitter *) NIL_CHK(emitter)).myLayer];
  return emitter;
}

- (id)init {
  return [super init];
}

- (void)dealloc {
  [super dealloc];
}

@end
@implementation TPTuxParticles_$1

- (TPTuxEmitter *)val$emitter {
  return val$emitter_;
}
- (void)setVal$emitter:(TPTuxEmitter *)val$emitter {
  JreOperatorRetainedAssign(&val$emitter_, self, val$emitter);
}
@synthesize val$emitter = val$emitter_;

- (void)onEmitWithId:(TPParticles_Now *)now {
  [((TPTuxEmitter *) NIL_CHK(val$emitter_)) updateWithFloat:((TPParticles_Now *) NIL_CHK(now)).time withFloat:((TPParticles_Now *) NIL_CHK(now)).dt];
}

- (id)initWithTPTuxEmitter:(TPTuxEmitter *)capture$0 {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&val$emitter_, self, capture$0);
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&val$emitter_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TPTuxParticles_$1 *typedCopy = (TPTuxParticles_$1 *) copy;
  typedCopy.val$emitter = val$emitter_;
}

@end
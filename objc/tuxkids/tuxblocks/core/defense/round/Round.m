//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: C:\Users\Thomas\Documents\Eclipse\Tux\tuxblocks\core\src\main\java\tuxkids\tuxblocks\core\defense\round\Round.java
//
//  Created by Thomas on 7/1/13.
//

#import "java/lang/Integer.h"
#import "java/util/ArrayList.h"
#import "java/util/Iterator.h"
#import "java/util/List.h"
#import "tuxkids/tuxblocks/core/GameState.h"
#import "tuxkids/tuxblocks/core/defense/GridObject.h"
#import "tuxkids/tuxblocks/core/defense/round/Reward.h"
#import "tuxkids/tuxblocks/core/defense/round/Round.h"
#import "tuxkids/tuxblocks/core/defense/round/Wave.h"
#import "tuxkids/tuxblocks/core/defense/walker/Walker.h"

@implementation TBRound

- (id<JavaUtilList>)waves {
  return waves_;
}
- (void)setWaves:(id<JavaUtilList>)waves {
  JreOperatorRetainedAssign(&waves_, self, waves);
}
@synthesize waves = waves_;
- (id<JavaUtilList>)waitTimes {
  return waitTimes_;
}
- (void)setWaitTimes:(id<JavaUtilList>)waitTimes {
  JreOperatorRetainedAssign(&waitTimes_, self, waitTimes);
}
@synthesize waitTimes = waitTimes_;
@synthesize timer = timer_;
- (TBWave *)currentWave {
  return currentWave_;
}
- (void)setCurrentWave:(TBWave *)currentWave {
  JreOperatorRetainedAssign(&currentWave_, self, currentWave);
}
@synthesize currentWave = currentWave_;
@synthesize nextDepth_ = nextDepth__;
- (id<JavaUtilList>)rewards {
  return rewards_;
}
- (void)setRewards:(id<JavaUtilList>)rewards {
  JreOperatorRetainedAssign(&rewards_, self, rewards);
}
@synthesize rewards = rewards_;

- (void)populateRound {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (float)nextDepth {
  return nextDepth__;
}

- (id)init {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&waves_, self, [[[JavaUtilArrayList alloc] init] autorelease]);
    JreOperatorRetainedAssign(&waitTimes_, self, [[[JavaUtilArrayList alloc] init] autorelease]);
    JreOperatorRetainedAssign(&rewards_, self, [[[JavaUtilArrayList alloc] init] autorelease]);
    [self populateRound];
  }
  return self;
}

- (void)addWaveWithTBWave:(TBWave *)wave
                  withInt:(int)waitTime {
  [((id<JavaUtilList>) NIL_CHK(waves_)) addWithId:wave];
  [((id<JavaUtilList>) NIL_CHK(waitTimes_)) addWithId:[JavaLangInteger valueOfWithInt:waitTime]];
}

- (void)addRewardWithTBReward:(TBReward *)reward {
  [((id<JavaUtilList>) NIL_CHK(rewards_)) addWithId:reward];
}

- (void)winRoundWithTBGameState:(TBGameState *)gameState {
  {
    id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [((id<JavaUtilList>) NIL_CHK(rewards_)) iterator]);
    while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
      TBReward *reward = ((TBReward *) [((id<JavaUtilIterator>) NIL_CHK(iter__)) next]);
      [((TBGameState *) NIL_CHK(gameState)) addProblemWithRewardWithTBReward:reward];
    }
  }
}

- (TBWalker *)updateWithInt:(int)delta {
  if ([self finished]) return nil;
  if (currentWave_ != nil) {
    TBWalker *walker = [currentWave_ updateWithInt:delta];
    if (walker != nil) nextDepth__--;
    if ([currentWave_ finished]) {
      JreOperatorRetainedAssign(&currentWave_, self, nil);
    }
    return walker;
  }
  timer_ += delta;
  if (currentWave_ == nil && [((id<JavaUtilList>) NIL_CHK(waitTimes_)) size] > 0 && timer_ >= [((JavaLangInteger *) [((id<JavaUtilList>) NIL_CHK(waitTimes_)) getWithInt:0]) intValue]) {
    JreOperatorRetainedAssign(&currentWave_, self, ((TBWave *) [((id<JavaUtilList>) NIL_CHK(waves_)) removeWithInt:0]));
    (void) [((id<JavaUtilList>) NIL_CHK(waitTimes_)) removeWithInt:0];
    nextDepth__ = TBDGridObject_MAX_BASE_DEPTH;
    timer_ = 0;
  }
  return nil;
}

- (BOOL)finished {
  return [((id<JavaUtilList>) NIL_CHK(waves_)) size] == 0 && currentWave_ == nil;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&rewards_, self, nil);
  JreOperatorRetainedAssign(&currentWave_, self, nil);
  JreOperatorRetainedAssign(&waitTimes_, self, nil);
  JreOperatorRetainedAssign(&waves_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TBRound *typedCopy = (TBRound *) copy;
  typedCopy.waves = waves_;
  typedCopy.waitTimes = waitTimes_;
  typedCopy.timer = timer_;
  typedCopy.currentWave = currentWave_;
  typedCopy.nextDepth_ = nextDepth__;
  typedCopy.rewards = rewards_;
}

@end
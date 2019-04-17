//
//  NSTimer+weakTimer.m
//  CustomWeakTimer
//
//  Created by MAC005 on 2019/4/17.
//  Copyright © 2019年 MAC005. All rights reserved.
//

#import "NSTimer+weakTimer.h"

@interface TimerWeakObject : NSObject
@property(nonatomic,weak) id target;
@property(nonatomic,assign) SEL selector;
@property(nonatomic,weak) NSTimer*timer;

-(void)fire:(NSTimer*)timer;

@end

@implementation TimerWeakObject

-(void)fire:(NSTimer *)timer{
    
    if (self.target) {
        if ([self.target respondsToSelector:self.selector]) {
            [self.target performSelector:self.selector withObject:timer.userInfo];
        }
    }else{
        [self.timer invalidate];
    }
}

@end

@implementation NSTimer (weakTimer)

+(NSTimer*)scheduledWeakTimerWithTimeInterval:(NSTimeInterval)ti target:(id)aTarget selector:(SEL)aSelector userInfo:(id)userInfo repeats:(BOOL)yesOrNo{
    
    TimerWeakObject*object=[[TimerWeakObject alloc]init];
    object.target=aTarget;
    object.selector=aSelector;

    object.timer=[NSTimer scheduledTimerWithTimeInterval:ti target:object selector:@selector(fire:) userInfo:userInfo repeats:yesOrNo];
    return object.timer;
}

@end

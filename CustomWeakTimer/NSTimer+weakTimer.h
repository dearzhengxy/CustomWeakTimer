//
//  NSTimer+weakTimer.h
//  CustomWeakTimer
//
//  Created by MAC005 on 2019/4/17.
//  Copyright © 2019年 MAC005. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimer (weakTimer)

+(NSTimer*)scheduledWeakTimerWithTimeInterval:(NSTimeInterval)ti target:(id)aTarget selector:(SEL)aSelector userInfo:(id)userInfo repeats:(BOOL)yesOrNo;

@end

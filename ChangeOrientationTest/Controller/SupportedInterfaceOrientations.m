//
//  SupportedInterfaceOrientations.m
//  Ecosphere
//
//  Created by Vivien on 16/11/27.
//  Copyright © 2016年 Ecovacs. All rights reserved.
//

#import "SupportedInterfaceOrientations.h"

@implementation SupportedInterfaceOrientations

+ (SupportedInterfaceOrientations *)sharedInstance {
    static SupportedInterfaceOrientations *instance = nil;
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        instance = [[self alloc] init];
        instance.orientationMask = UIInterfaceOrientationMaskPortrait;  // 默认竖屏
    });
    return instance;
}

#pragma mark - 竖屏
- (void)rotationPortrait
{
    [SupportedInterfaceOrientations sharedInstance].orientationMask = UIInterfaceOrientationMaskPortrait;
    
    [self changeOrientation:UIInterfaceOrientationPortrait];
}

#pragma mark - 横屏
- (void)rotationLandscape
{
    [SupportedInterfaceOrientations sharedInstance].orientationMask = UIInterfaceOrientationMaskLandscape;
    [self changeOrientation:UIInterfaceOrientationLandscapeRight];
}


- (void)changeOrientation:(UIInterfaceOrientation)orientation {
    SEL selector = NSSelectorFromString(@"setOrientation:");
    NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[UIDevice instanceMethodSignatureForSelector:selector]];
    [invocation setSelector:selector];
    [invocation setTarget:[UIDevice currentDevice]];
    int val = orientation;
    [invocation setArgument:&val atIndex:2];//前两个参数已被target和selector占用
    [invocation invoke];
}
@end

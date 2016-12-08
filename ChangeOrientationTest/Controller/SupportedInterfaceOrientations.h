//
//  SupportedInterfaceOrientations.m
//  Ecosphere
//
//  Created by Vivien on 16/11/27.
//  Copyright © 2016年 Ecovacs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface SupportedInterfaceOrientations : NSObject

@property (assign, nonatomic) UIInterfaceOrientationMask orientationMask;

+ (SupportedInterfaceOrientations *)sharedInstance;

- (void)rotationPortrait;

- (void)rotationLandscape;

@end

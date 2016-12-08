//
//  ViewController.m
//  ChangeOrientationTest
//
//  Created by Vivien on 2016/12/7.
//  Copyright © 2016年 Vivien. All rights reserved.
//

#import "ViewController.h"
#import "SupportedInterfaceOrientations.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeOrientationToPortait:(id)sender {
    
        [[SupportedInterfaceOrientations sharedInstance]rotationPortrait];
        [self setPortraitLayout];
    
}
- (IBAction)changeOrientationToLandscape:(id)sender {
    
    [[SupportedInterfaceOrientations sharedInstance]rotationLandscape];
    [self setLandscapeLayout];
}

- (void)setPortraitLayout
{
        [self.navigationController setNavigationBarHidden:NO animated:YES];
        [[UIApplication sharedApplication] setStatusBarHidden:NO];
    
}

- (void)setLandscapeLayout
{
    [self.navigationController setNavigationBarHidden:YES animated:YES];
    
    [[UIApplication sharedApplication] setStatusBarHidden:YES];
}

@end

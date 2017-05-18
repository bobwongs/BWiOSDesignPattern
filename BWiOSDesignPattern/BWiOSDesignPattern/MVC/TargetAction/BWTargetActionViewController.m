//
//  BWTargetActionViewController.m
//  BWiOSDesignPattern
//
//  Created by BobWong on 2017/5/18.
//  Copyright © 2017年 BobWongStudio. All rights reserved.
//

#import "BWTargetActionViewController.h"

@interface BWTargetActionViewController ()

@end

@implementation BWTargetActionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(20, 100, 200, 45);
    [button setTitle:@"Button" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)dealloc {
    NSLog(@"dealloc %@", NSStringFromClass([self class]));
}

- (void)buttonAction:(id)sender
{
    NSLog(@"action");
}

@end

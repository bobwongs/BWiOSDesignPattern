//
//  BWDelegateViewController.m
//  BWiOSDesignPattern
//
//  Created by BobWong on 2017/5/17.
//  Copyright © 2017年 BobWongStudio. All rights reserved.
//

#import "BWDelegateViewController.h"
#import "BWDelegatePattern.h"

@interface BWDelegateViewController () <BWMyDelegate>

@end

@implementation BWDelegateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    BWDelegatePattern *pattern = [BWDelegatePattern new];
    pattern.delegate = self;
    [pattern doDelegateRequiredWork];
}

- (void)doRequiredWork {
    NSLog(@"do required works");
}

- (void)doMyWork {
    NSLog(@"do my work");
}

@end

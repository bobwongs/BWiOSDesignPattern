//
//  BWSingletonPatternVC.m
//  BWiOSDesignPattern
//
//  Created by BobWong on 2017/5/16.
//  Copyright © 2017年 BobWongStudio. All rights reserved.
//

#import "BWSingletonPatternVC.h"
#import "BWSingletonClass.h"

@interface BWSingletonPatternVC ()

@end

@implementation BWSingletonPatternVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    BWSingletonClass *instance = [BWSingletonClass sharedInstance];
    instance.name = @"BobWong";
    NSLog(@"name is %@", instance.name);
}

@end

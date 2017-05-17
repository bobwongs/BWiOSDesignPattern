//
//  BWSub0ViewController.m
//  BWiOSDesignPattern
//
//  Created by BobWong on 2017/5/15.
//  Copyright © 2017年 BobWongStudio. All rights reserved.
//

#import "BWSub0ViewController.h"

@interface BWSub0ViewController ()

@end

@implementation BWSub0ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor grayColor];
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(20, 10, 200, 50)];
    view.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:view];
}

@end

//
//  BWSub1ViewController.m
//  BWiOSDesignPattern
//
//  Created by BobWong on 2017/5/15.
//  Copyright © 2017年 BobWongStudio. All rights reserved.
//

#import "BWSub1ViewController.h"

@interface BWSub1ViewController ()

@end

@implementation BWSub1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor grayColor];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20, 10, 200, 60)];
    label.text = @"Sub1 Label";
    label.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:label];
}

@end

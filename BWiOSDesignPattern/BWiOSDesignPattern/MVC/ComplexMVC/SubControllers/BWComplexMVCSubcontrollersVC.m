//
//  BWComplexMVCSubcontrollersVC.m
//  BWiOSDesignPattern
//
//  Created by BobWong on 2017/5/15.
//  Copyright © 2017年 BobWongStudio. All rights reserved.
//

#import "BWComplexMVCSubcontrollersVC.h"
#import "BWSub0ViewController.h"
#import "BWSub1ViewController.h"
#import "BWSub2ViewController.h"

@interface BWComplexMVCSubcontrollersVC ()

@end

@implementation BWComplexMVCSubcontrollersVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    BWSub0ViewController *vc0 = [BWSub0ViewController new];
    BWSub1ViewController *vc1 = [BWSub1ViewController new];
    BWSub2ViewController *vc2 = [BWSub2ViewController new];
    
    [self addChildViewController:vc0];
    [self addChildViewController:vc1];
    [self addChildViewController:vc2];
    
    vc0.view.frame = CGRectMake(20, 80, 200, 100);
    [self.view addSubview:vc0.view];
    
    vc1.view.frame = CGRectMake(20, CGRectGetMaxY(vc0.view.frame) + 20, 200, 60);
    [self.view addSubview:vc1.view];
    
    vc2.view.frame = CGRectMake(20, CGRectGetMaxY(vc1.view.frame) + 20, 200, 60);
//    [self.view addSubview:vc2.view];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self transitionFromViewController:vc1 toViewController:vc2 duration:3.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
            
        } completion:^(BOOL finished) {
            
        }];
    });
}

@end

/*
  Mark
  直接修改类实例的view实例，赋值为另外一个创建好的实例view，是不会把原来的view实例显示为新的view实例，因为此时旧的view还是有类实例引用着，新的只是赋值给了旧view实例的引用；只有addSubview方法才是正确添加视图的方式；已添加的视图没有替换的方法，只有靠addSubview或者removeFromSuperview等类似方法对视图进行操作
*/

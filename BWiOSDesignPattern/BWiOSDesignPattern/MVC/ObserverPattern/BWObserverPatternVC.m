//
//  BWObserverPatternVC.m
//  BWiOSDesignPattern
//
//  Created by BobWong on 2017/5/17.
//  Copyright © 2017年 BobWongStudio. All rights reserved.
//

#import "BWObserverPatternVC.h"

#define NS_NOTIFICATION_DEFAULT_CENTER [NSNotificationCenter defaultCenter]

NSString *const BWNotification = @"BWNotification";
NSString *const BWKeyPathName = @"name";
NSString *const BWKeyPathNameLength = @"name.length";
NSString *const BWKeyPathNameDescription = @"name.description";

@interface BWObserverPatternVC ()

@end

@implementation BWObserverPatternVC

#pragma mark - Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // NSNotificationCenter
//    [NS_NOTIFICATION_DEFAULT_CENTER addObserver:self selector:@selector(notificationAction:) name:BWNotification object:nil];
    
    // KVO
    [self addObserver:self forKeyPath:BWKeyPathName options:NSKeyValueObservingOptionNew context:nil];
    [self addObserver:self forKeyPath:BWKeyPathNameLength options:NSKeyValueObservingOptionNew context:nil];
    [self addObserver:self forKeyPath:BWKeyPathNameDescription options:NSKeyValueObservingOptionNew context:nil];
}

- (void)dealloc {
    [NS_NOTIFICATION_DEFAULT_CENTER removeObserver:self];
    
    [self removeObserver:self forKeyPath:BWKeyPathName context:nil];
    [self removeObserver:self forKeyPath:BWKeyPathNameLength context:nil];
    [self removeObserver:self forKeyPath:BWKeyPathNameDescription context:nil];
}

#pragma mark - NSNotificationCenter

- (void)notificationAction:(NSNotification *)notification
{
    NSDictionary *userInfo = notification.userInfo;
    NSString *notiName = notification.name;
    id object = notification.object;
    
    NSLog(@"notiName is %@", notiName);
    NSLog(@"userInfo is %@", userInfo);
    NSLog(@"object is %@", object);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [NS_NOTIFICATION_DEFAULT_CENTER postNotificationName:BWNotification object:nil userInfo:nil];
    
    self.name = @"BobWong";
}

#pragma mark - KVO

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    id newValue = change[NSKeyValueChangeNewKey];
    if ([keyPath isEqualToString:BWKeyPathName]) {
        NSLog(@"new value is %@", newValue);
    }
    else if ([keyPath isEqualToString:BWKeyPathNameLength]) {
        NSLog(@"new length is %ld", ((NSString *)newValue).integerValue);
    }
    else if ([keyPath isEqualToString:BWKeyPathNameDescription]) {
        NSLog(@"new value's description is %@", newValue);
    }
}

@end

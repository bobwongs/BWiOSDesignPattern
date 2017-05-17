//
//  BWSingletonClass.m
//  BWiOSDesignPattern
//
//  Created by BobWong on 2017/5/16.
//  Copyright © 2017年 BobWongStudio. All rights reserved.
//

#import "BWSingletonClass.h"

NSString *const BWKeyPathContentOffset = @"contentOffset";

@implementation BWSingletonClass

+ (instancetype)sharedInstance {
    static id sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    
    return sharedInstance;
}

- (void)willChangeValueForKey:(NSString *)key {
    
}

@end

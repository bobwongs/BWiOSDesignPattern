//
//  BWDelegatePattern.m
//  BWiOSDesignPattern
//
//  Created by BobWong on 2017/5/18.
//  Copyright © 2017年 BobWongStudio. All rights reserved.
//

#import "BWDelegatePattern.h"

@implementation BWDelegatePattern

- (void)doDelegateWork {
    if ([_delegate respondsToSelector:@selector(doMyWork)]) [_delegate doMyWork];
}

- (void)doDelegateRequiredWork {
    if ([_delegate respondsToSelector:@selector(doRequiredWork)]) [_delegate doRequiredWork];
}

@end

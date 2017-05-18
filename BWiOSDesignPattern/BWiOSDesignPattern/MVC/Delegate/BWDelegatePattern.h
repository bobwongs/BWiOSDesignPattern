//
//  BWDelegatePattern.h
//  BWiOSDesignPattern
//
//  Created by BobWong on 2017/5/18.
//  Copyright © 2017年 BobWongStudio. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol BWMyDelegate;

@interface BWDelegatePattern : NSObject

@property (weak, nonatomic) id<BWMyDelegate> delegate;

- (void)doDelegateWork;
- (void)doDelegateRequiredWork;

@end

@protocol BWMyDelegate <NSObject>

@required
- (void)doRequiredWork;

@optional
- (void)doMyWork;

@end

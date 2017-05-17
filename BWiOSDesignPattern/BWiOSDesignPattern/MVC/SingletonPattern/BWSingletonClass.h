//
//  BWSingletonClass.h
//  BWiOSDesignPattern
//
//  Created by BobWong on 2017/5/16.
//  Copyright © 2017年 BobWongStudio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BWSingletonClass : NSObject

@property (strong, nonatomic) NSString *name;  ///< Name

+ (instancetype)sharedInstance;

@end

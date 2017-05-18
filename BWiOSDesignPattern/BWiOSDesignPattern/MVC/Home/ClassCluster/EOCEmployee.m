//
//  EOCEmployee.m
//  BWiOSDesignPattern
//
//  Created by BobWong on 2017/5/18.
//  Copyright © 2017年 BobWongStudio. All rights reserved.
//

#import "EOCEmployee.h"
#import "EOCEmployeeDeveloper.h"
#import "EOCEmployeeDesigner.h"
#import "EOCEmployeeFinance.h"

@implementation EOCEmployee

+ (EOCEmployee *)employeeWithType:(EOCEmployeeType)type {
    switch (type) {
        case EOCEmployeeTypeDeveloper:
            return [EOCEmployeeDeveloper new];
        case EOCEmployeeTypeDesigner:
            return [EOCEmployeeDesigner new];
        case EOCEmployeeTypeFinance:
            return [EOCEmployeeFinance new];
    }
}

// Abstract method
- (void)doADayWork {
    // Subclasses implement this
}

@end

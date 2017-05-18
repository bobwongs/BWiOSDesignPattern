//
//  BWClassClusterViewController.m
//  BWiOSDesignPattern
//
//  Created by BobWong on 2017/5/18.
//  Copyright © 2017年 BobWongStudio. All rights reserved.
//

#import "BWClassClusterViewController.h"
#import "EOCEmployee.h"

@interface BWClassClusterViewController ()

@end

@implementation BWClassClusterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    EOCEmployee *employee = [EOCEmployee employeeWithType:EOCEmployeeTypeDeveloper];
    [employee doADayWork];
}

@end

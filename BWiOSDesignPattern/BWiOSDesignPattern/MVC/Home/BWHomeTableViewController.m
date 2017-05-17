//
//  BWHomeTableViewController.m
//  BWiOSDesignPattern
//
//  Created by BobWong on 2017/5/15.
//  Copyright © 2017年 BobWongStudio. All rights reserved.
//

#import "BWHomeTableViewController.h"

@interface BWHomeTableViewController ()

@property (strong, nonatomic) NSArray *dataSource;

@end

@implementation BWHomeTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"viewDidLoad");  // Second Execution
    
    self.dataSource = @[
                        @"home_to_complex_mvc_subcontroller",
                        @"home_to_singleton_pattern",
                        @"home_to_observer_pattern"
                        ];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
    NSLog(@"awakeFromNib");  // First Execution
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _dataSource ? _dataSource.count : 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellId = @"CellId";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (!cell) {
        cell = [[UITableViewCell alloc]  initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    
    cell.textLabel.text = _dataSource[indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:NO];

    [self performSegueWithIdentifier:_dataSource[indexPath.row] sender:_dataSource[indexPath.row]];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    segue.destinationViewController.title = sender;
}

@end

//
//  ViewController.m
//  TableViewCheckBoxExample
//
//  Created by Vaishali on 9/5/17.
//  Copyright © 2017 VaishaliApp. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    dataArray=[[NSMutableArray alloc]init];
    [dataArray addObject:@"Apple"];
    [dataArray addObject:@"Mango"];
    [dataArray addObject:@"Papaya"];
    [dataArray addObject:@"Guava"];
    [dataArray addObject:@"Pineapple"];
    [dataArray addObject:@"Strawberry"];
    [dataArray addObject:@"Banana"];
    [dataArray addObject:@"Grapes"];
    [dataArray addObject:@"Pomegranate"];
    [dataArray addObject:@"Green Tea"];
    [dataArray addObject:@"Raisin"];
    
    self.mTableView.delegate=(id)self;
    self.mTableView.dataSource=(id)self;
}
//- (IBAction)didTapBringCheckBoxBtn:(id)sender {
    
  //  [_mTableView setEditing:YES animated:YES];
//}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [dataArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text = [dataArray objectAtIndex:indexPath.row];
    [_mTableView setEditing:YES animated:YES];
    return cell;
}
- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 3;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"user selected %@",[dataArray objectAtIndex:indexPath.row]);
}
- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"user de-selected %@",[dataArray objectAtIndex:indexPath.row]);
}

-(void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

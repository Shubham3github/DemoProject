//
//  ViewController.h
//  TableViewCheckBoxExample
//
//  Created by Vaishali on 9/5/17.
//  Copyright © 2017 VaishaliApp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITabBarDelegate>

{
    NSMutableArray *dataArray;
}
@property (weak,nonatomic)IBOutlet UITableView *mTableView;
//- (IBAction)didTapBringCheckBoxBtn:(id)sender;


@end


//
//  ViewController.h
//  floatingButtonTrial
//
//  Created by Giridhar on 26/03/15.
//  Copyright (c) 2015 Giridhar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VCFloatingActionButton.h"

@interface ViewController : UIViewController <floatMenuDelegate,UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *dummyTable;

@end


//
//  ViewController.m
//  floatingButtonTrial
//
//  Created by Giridhar on 26/03/15.
//  Copyright (c) 2015 Giridhar. All rights reserved.
//

#import "ViewController.h"




@interface ViewController ()
@property (strong, nonatomic) VCFloatingActionButton *addButton;


@end

@implementation ViewController
@synthesize addButton;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    CGRect floatFrame = CGRectMake([UIScreen mainScreen].bounds.size.width - 44 - 20, [UIScreen mainScreen].bounds.size.height - 44 - 20, 44, 44);

    addButton = [[VCFloatingActionButton alloc]initWithFrame:floatFrame normalImage:[UIImage imageNamed:@"plus"] andPressedImage:[UIImage imageNamed:@"cross"] withScrollview:_dummyTable];
    
//    NSDictionary *optionsDictionary = @{@"fb-icon":@"Facebook",@"twitter-icon":@"Twitter",@"google-icon":@"Google Plus",@"linkedin-icon":@"Linked in"};
//    addButton.menuItemSet = optionsDictionary;
    
    
    addButton.imageArray = @[@"fb-icon",@"twitter-icon",@"google-icon",@"linkedin-icon"];
    addButton.labelArray = @[@"Facebook",@"Twitter",@"Google Plus",@"Linked in"];
    


    addButton.hideWhileScrolling = YES;
    addButton.delegate = self;

    
    _dummyTable.dataSource = self;
    _dummyTable.delegate = self;

    
    [self.view addSubview:addButton];
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 100;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellId = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (!cell)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"%tu",indexPath.row];
    return cell;
}


-(void) didSelectMenuOptionAtIndex:(NSInteger)row
{
    NSLog(@"Floating action tapped index %tu",row);
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

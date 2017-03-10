//
//  ViewController.m
//  TableViewOBJC
//
//  Created by Nem Sothea on 3/10/17.
//  Copyright © 2017 Nem Sothea. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,strong)UITableView *table;
@property (nonatomic,strong)NSArray *content;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.content = @[@"Monday",@"Tuesday",@"Wednesday",@"Thurday",@"Friday",@"Saturday",@"Sunday"];
    self.table.dataSource = self;
    self.table.delegate = self;
    
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _content.count;
}
-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [self.table dequeueReusableCellWithIdentifier:@"CellIdentifier"];
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CellIdentifier"];
        
    }
    cell.textLabel.text = [_content objectAtIndex:indexPath.row];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"Title of cell %@",[_content objectAtIndex:indexPath.row]);
}




@end

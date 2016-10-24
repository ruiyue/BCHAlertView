//
//  ViewController.m
//  BCHAlertViewDemo
//
//  Created by yiliao on 2016/10/24.
//  Copyright © 2016年 bch. All rights reserved.
//

#import "ViewController.h"
#import "BCHAlertView.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController
#pragma mark – Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.tableView.sectionHeaderHeight = 0;
    self.tableView.sectionFooterHeight = 0;
//    self.tableView.contentInset = UIEdgeInsetsMake(-35, 0, 0, 0);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
 
#pragma mark – Private Methods
-(void)setTableViewSeparatorInset{
    if ([self.tableView respondsToSelector:@selector(setSeparatorInset:)]) {
        [self.tableView setSeparatorInset:UIEdgeInsetsZero];
    }
    if ([self.tableView respondsToSelector:@selector(setLayoutMargins:)]) {
        [self.tableView setLayoutMargins:UIEdgeInsetsZero];
    }
}
    
#pragma mark - UITableViewDataSource
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 3;
}
    
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    if (section == 2) {
        return 2;
    }else{
        return 1;
    }
}
    
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *ID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:ID];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"click me %ld",indexPath.row];
    return cell;
}
    
#pragma mark - UITableViewDelegate
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if (indexPath.section == 0) {
        [UIView bch_showWithTitle:@"温馨提示" message:@"是你点击了我?" buttonTitles:@[@"Yes",@"No"] callback:^(id sender, NSUInteger buttonIndex) {
            if (buttonIndex == 0) {
                NSLog(@"诚实的孩子!");
            }else{
                NSLog(@"别逗了,我看见是你点了我!");
            }
        }];
    }else if (indexPath.section == 1) {
        [UIView bch_showWithTitle:@"温馨提示" cancelTitle:@"取消" destructiveTitle:@"destructiveTitle" otherTitles:@[@"吃饭",@"睡觉",@"打豆豆"] callback:^(id sender, NSInteger buttonIndex) {
            if (buttonIndex == 0) {
                NSLog(@"0");
            }else if (buttonIndex == 1){
                NSLog(@"1");
            }else if (buttonIndex == 2){
                NSLog(@"2");
            }else if (buttonIndex == 3){
                NSLog(@"3");
            }else if (buttonIndex == 4){
                NSLog(@"4");
            }
        }];
    }else {
        if (indexPath.row == 0) {
            [UIAlertController bch_showWithTitle:@"温馨提示" message:@"Alert ?" buttonTitles:@[@"Yes",@"No"] preferredStyle:UIAlertControllerStyleAlert block:^(UIAlertAction *action, NSUInteger buttonIndex) {
                if (buttonIndex == 0) {
                    NSLog(@"聪明!");
                }else{
                    NSLog(@"不对!");
                }
            }];
        }else{
            [UIAlertController bch_showWithTitle:@"温馨提示" message:@"ActionSheet ?" buttonTitles:@[@"a",@"b",@"c",@"d",@"e",@"f"] preferredStyle:UIAlertControllerStyleActionSheet block:^(UIAlertAction *action, NSUInteger buttonIndex) {
                
            }];
        }
    }
}
    
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 60.f;
}
    
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 45.f;
}
    
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UILabel *headView = [[UILabel alloc]init];
    if (section == 0) {
        headView.text = @"  Alert";
    }else if (section == 1) {
        headView.text = @"  ActionSheet";
    }else {
        headView.text = @"  UIAlertController";
    }
    return headView;
}
    
    // 去掉 cell 左边的线
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    if ([cell respondsToSelector:@selector(setSeparatorInset:)]) {
        [cell setSeparatorInset:UIEdgeInsetsZero];
    }
    if ([cell respondsToSelector:@selector(setLayoutMargins:)]) {
        [cell setLayoutMargins:UIEdgeInsetsZero];
    }
}
#pragma mark – Getters and Setters

@end

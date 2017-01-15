//
//  ViewController.m
//  DesignPattern
//
//  Created by Zheng Hongsheng on 2017/1/15.
//  Copyright © 2017年 Zheng Hongsheng. All rights reserved.
//

#import "ViewController.h"
#import "ObserverVC.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView * tableView;
@property (nonatomic, strong) NSArray * patterns;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    self.patterns = @[@"观察者模式" , @"工厂模式"];
    self.tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    [self.view addSubview:self.tableView];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.patterns.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"patterns"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"patterns"];
    }
    cell.textLabel.text = self.patterns[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0: {
            // 观察者模式
            ObserverVC * oVC = [[ObserverVC alloc]init];
            [self.navigationController pushViewController:oVC animated:YES];
        }
            break;
            
        case 1:
            // 工厂模式
            NSLog(@"进入工厂模式");
            break;
            
        default:
            break;
    }
}

@end

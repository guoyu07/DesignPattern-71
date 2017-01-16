//
//  ObserverVC.m
//  DesignPattern
//
//  Created by Zheng Hongsheng on 2017/1/15.
//  Copyright © 2017年 Zheng Hongsheng. All rights reserved.
//

#import "ObserverVC.h"
#import "VegetablesPriceData.h"
#import "Vegetable.h"

@interface ObserverVC ()

@property (weak, nonatomic) IBOutlet UILabel *potatoPriceLabel;
@property (weak, nonatomic) IBOutlet UILabel *tomatoPriceLabel;
@property (weak, nonatomic) IBOutlet UILabel *unionPriceLabel;

@property (strong, nonatomic) VegetablesPriceData * priceManager;
@property (strong, nonatomic) Potato * potato;
@property (strong, nonatomic) Tomato * tomato;
@property (strong, nonatomic) Onion * onion;

@end

@implementation ObserverVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.title = @"观察者模式";
    
    self.priceManager = VegetablesPriceData.new;
    self.potato = Potato.new;
    self.tomato = Tomato.new;
    self.onion = Onion.new;
    [self.priceManager registerObserver:self.potato];
    [self.priceManager registerObserver:self.tomato];
    [self.priceManager registerObserver:self.onion];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

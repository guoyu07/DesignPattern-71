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

@interface ObserverVC () {
    float pPrice;
    float tPrice;
    float oPrice;
}

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
    
    pPrice = 1.0f;
    tPrice = 0.7f;
    oPrice = 3.2f;
    
    __weak __typeof__(self) ws = self;
    
    self.priceManager = VegetablesPriceData.new;
    self.potato = Potato.new;
    self.potato.priceChanged = ^(float price) {
        NSLog(@"土豆价格：%.2f元", price);
        ws.potatoPriceLabel.text = [NSString stringWithFormat:@"%.2f元", price];
    };
    self.tomato = Tomato.new;
    self.tomato.priceChanged = ^(float price) {
        NSLog(@"西红柿价格：%.2f元", price);
        ws.tomatoPriceLabel.text = [NSString stringWithFormat:@"%.2f元", price];
    };
    self.onion = Onion.new;
    self.onion.priceChanged = ^(float price) {
        NSLog(@"洋葱价格：%.2f元", price);
        ws.unionPriceLabel.text = [NSString stringWithFormat:@"%.2f元", price];
    };
    [self.priceManager registerObserver:self.potato];
    [self.priceManager registerObserver:self.tomato];
    [self.priceManager registerObserver:self.onion];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)updateButtonOnClick:(id)sender {
    pPrice *= 1.1f;
    tPrice *= 1.1f;
    oPrice *= 1.1f;
    [self.priceManager setPotatoPrice:pPrice tomatoPrice:tPrice onionPrice:oPrice];
}

@end

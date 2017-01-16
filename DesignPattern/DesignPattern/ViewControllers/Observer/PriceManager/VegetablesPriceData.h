//
//  VegetablesPriceData.h
//  DesignPattern
//
//  Created by Tommy on 2017/1/16.
//  Copyright © 2017年 Zheng Hongsheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ObserverProtocol.h"

@interface VegetablesPriceData : NSObject<Subject>

@property (nonatomic, strong) NSMutableArray<id<Observer>> * observers;

@property (nonatomic, assign) float potatoPrice;
@property (nonatomic, assign) float tomatoPrice;
@property (nonatomic, assign) float onionPrice;

- (void)setPotatoPrice:(float)potatoPrice tomatoPrice:(float)tomatoPrice onionPrice:(float)onionPrice;

@end

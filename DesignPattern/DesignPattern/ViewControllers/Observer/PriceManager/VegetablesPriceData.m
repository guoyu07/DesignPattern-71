//
//  VegetablesPriceData.m
//  DesignPattern
//
//  Created by Tommy on 2017/1/16.
//  Copyright © 2017年 Zheng Hongsheng. All rights reserved.
//

#import "VegetablesPriceData.h"

@implementation VegetablesPriceData

- (instancetype)init {
    self = [super init];
    if (self) {
        self.observers = [NSMutableArray array];
    }
    return self;
}

#pragma mark - Subject

- (void)registerObserver:(id<Observer>)observer {
    [self.observers addObject:observer];
}

- (void)removeObserver:(id<Observer>)observer {
//    if ([self.observers containsObject:observer]) {
//        [self.observers removeObject:observer];
//    }
    NSInteger index = [self.observers indexOfObject:observer];
    if (index >= 0) {
        [self.observers removeObject:observer];
    }
}

- (void)notifyObservers {
    for (id<Observer> observer in self.observers) {
        [observer updatePotatoPrice:self.potatoPrice tomatoPrice:self.tomatoPrice onionPrice:self.onionPrice];
    }
}

- (void)setPotatoPrice:(float)potatoPrice tomatoPrice:(float)tomatoPrice onionPrice:(float)onionPrice {
    self.potatoPrice = potatoPrice;
    self.tomatoPrice = tomatoPrice;
    self.onionPrice = onionPrice;
    [self priceDataChanged];
}

- (void)priceDataChanged {
    [self notifyObservers];
}

@end

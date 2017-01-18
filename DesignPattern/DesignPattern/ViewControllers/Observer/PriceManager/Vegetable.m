//
//  Vegetable.m
//  DesignPattern
//
//  Created by Tommy on 2017/1/16.
//  Copyright © 2017年 Zheng Hongsheng. All rights reserved.
//

#import "Vegetable.h"

@implementation Potato

- (void)updatePotatoPrice:(float)potato tomatoPrice:(float)tomato onionPrice:(float)onion {
    self.price = potato;
    [self display];
}

- (void)display {
    if (self.priceChanged) {
        self.priceChanged(self.price);
    }
}

@end

@implementation Tomato

- (void)updatePotatoPrice:(float)potato tomatoPrice:(float)tomato onionPrice:(float)onion {
    self.price = tomato;
    [self display];
}

- (void)display {
    if (self.priceChanged) {
        self.priceChanged(self.price);
    }
}

@end

@implementation Onion

- (void)updatePotatoPrice:(float)potato tomatoPrice:(float)tomato onionPrice:(float)onion {
    self.price = onion;
    [self display];
}

- (void)display {
    if (self.priceChanged) {
        self.priceChanged(self.price);
    }
}

@end

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
    NSLog(@"土豆价格：%.2f元", self.price);
    if (self.callback) {
        self.callback(self.price);
    }
}

@end

@implementation Tomato

- (void)updatePotatoPrice:(float)potato tomatoPrice:(float)tomato onionPrice:(float)onion {
    self.price = tomato;
    [self display];
}

- (void)display {
    
}

@end

@implementation Onion

- (void)updatePotatoPrice:(float)potato tomatoPrice:(float)tomato onionPrice:(float)onion {
    self.price = onion;
    [self display];
}

- (void)display {
    
}

@end

//
//  Vegetable.h
//  DesignPattern
//
//  Created by Tommy on 2017/1/16.
//  Copyright © 2017年 Zheng Hongsheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ObserverProtocol.h"

@interface Potato : NSObject<Observer, DisplayElement>

@property (nonatomic, assign) float price;
@property (copy, nonatomic) void(^priceChanged)(float);

@end

@interface Tomato : NSObject<Observer, DisplayElement>

@property (nonatomic, assign) float price;
@property (copy, nonatomic) void(^priceChanged)(float);

@end

@interface Onion : NSObject<Observer, DisplayElement>

@property (nonatomic, assign) float price;
@property (copy, nonatomic) void(^priceChanged)(float);

@end

//
//  ObserverProtocol.h
//  DesignPattern
//
//  Created by Tommy on 2017/1/16.
//  Copyright © 2017年 Zheng Hongsheng. All rights reserved.
//

#ifndef ObserverProtocol_h
#define ObserverProtocol_h

/**
 观察者
 */
@protocol Observer <NSObject>

@required
- (void)updatePotatoPrice:(float)potato tomatoPrice:(float)tomato onionPrice:(float)onion;

@end

/**
 可观察主题
 */
@protocol Subject <NSObject>

@required
- (void)registerObserver:(id<Observer>)observer;
- (void)removeObserver:(id<Observer>)observer;
- (void)notifyObservers;

@end


/**
 展示观察内容
 */
@protocol DisplayElement <NSObject>

@optional
- (void)display;

@end

#endif /* ObserverProtocol_h */

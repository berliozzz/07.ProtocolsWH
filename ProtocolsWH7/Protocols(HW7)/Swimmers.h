//
//  Swimmers.h
//  Protocols(HW7)
//
//  Created by Nikolay Berlioz on 06.09.15.
//  Copyright (c) 2015 Nikolay Berlioz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

@protocol Swimmers <NSObject>

@required//--------------- Обязательные -------------------------------------------
@property (assign, nonatomic) CGFloat depthOfDiving;
- (void) swim;

@optional //--------------- Не обязательные ---------------------------------------
@property (assign, nonatomic) CGFloat swimSpeed;
- (void)dive;

@end

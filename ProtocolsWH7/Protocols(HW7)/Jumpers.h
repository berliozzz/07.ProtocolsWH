//
//  Jumpers.h
//  Protocols(HW7)
//
//  Created by Nikolay Berlioz on 06.09.15.
//  Copyright (c) 2015 Nikolay Berlioz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

@protocol Jumpers <NSObject>

@required//--------------- Обязательные -------------------------------------------
@property (assign, nonatomic) CGFloat lenghtJump;
- (void) jump;

@optional //--------------- Не обязательные ---------------------------------------
@property (strong, nonatomic) NSString* name;
- (void)see;
@end

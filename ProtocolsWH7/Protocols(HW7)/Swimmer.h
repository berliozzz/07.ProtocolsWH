//
//  Swimmer.h
//  Protocols(HW7)
//
//  Created by Nikolay Berlioz on 06.09.15.
//  Copyright (c) 2015 Nikolay Berlioz. All rights reserved.
//

#import "HumanClass.h"
#import "Swimmers.h"
#import <CoreGraphics/CoreGraphics.h>

@interface Swimmer : HumanClass <Swimmers>

@property (assign, nonatomic) CGFloat depthOfDiving;

@end

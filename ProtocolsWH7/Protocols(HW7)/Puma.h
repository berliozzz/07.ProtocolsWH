//
//  ani.h
//  Protocols(HW7)
//
//  Created by Nikolay Berlioz on 06.09.15.
//  Copyright (c) 2015 Nikolay Berlioz. All rights reserved.
//

#import "AnimalClass.h"
#import "Jumpers.h"
#import "Runners.h"

@interface Puma : AnimalClass <Jumpers, Runners>

@property (assign, nonatomic) CGFloat lenghtJump;
@property (assign, nonatomic) CGFloat speedRun;

@end

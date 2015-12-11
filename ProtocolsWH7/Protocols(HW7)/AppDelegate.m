//
//  AppDelegate.m
//  Protocols(HW7)
//
//  Created by Nikolay Berlioz on 06.09.15.
//  Copyright (c) 2015 Nikolay Berlioz. All rights reserved.
//

#import "AppDelegate.h"
#import "Jumpers.h"
#import "Swimmers.h"
#import "Runners.h"
#import "Cyclist.h"
#import "Runner.h"
#import "Swimmer.h"
#import "Puma.h"
#import "Kengooru.h"
#import <CoreGraphics/CoreGraphics.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //создаем объекты
    
    Puma * puma = [[Puma alloc] init];
    Kengooru * kengooru = [[Kengooru alloc] init];
    Cyclist * cyclist = [[Cyclist alloc] init];
    Runner * runner = [[Runner alloc] init];
    Swimmer * swimmer = [[Swimmer alloc] init];
    
    //присваиваем свойства объектам
    
    puma.lenghtJump = 5.5f;
    puma.speedRun = 60.f;
    kengooru.lenghtJump = 11.3f;
    cyclist.lenghtJump = 3.f;
    cyclist.speedRun = 31.4f;
    cyclist.depthOfDiving = 10.f;
    runner.lenghtJump = 3.4f;
    runner.speedRun = 20.f;
    swimmer.depthOfDiving = 15.f;
    
    //создаем массив со всеми нашими объектами
    NSArray * arrayAnimalAndHuman = [[NSArray alloc] initWithObjects:puma, kengooru, cyclist, runner, swimmer, nil];
    
    //запускаем все доступные каждому объекту методы
    for (id object in arrayAnimalAndHuman)
    {
        if ([object respondsToSelector:@selector(swim)])
        {
            [object swim];
            NSLog(@"dive to %.1f meters!", [object depthOfDiving]); //на сколько метров погружение
            NSLog(@"-------------------------");
        }
        if ([object respondsToSelector:@selector(jump)])
        {
            [object jump];
            NSLog(@"to %.1f meters!", [object lenghtJump]);    //на сколько метров прыжок
            NSLog(@"-------------------------");

        }
        if ([object respondsToSelector:@selector(run)])
        {
            [object run];
            NSLog(@"with speed %.1f km/h!", [object speedRun]); //с какой скоростью
            NSLog(@"-------------------------");
        }
    }

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

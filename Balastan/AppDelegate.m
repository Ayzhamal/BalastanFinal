//
//  AppDelegate.m
//  Balastan
//
//  Created by AyzhamalKg on 2/19/16.
//  Copyright © 2016 Balastan. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()<AVAudioPlayerDelegate>
@property(strong, nonatomic) AVAudioPlayer* player;
@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    AVAudioSession* audioSession=[AVAudioSession sharedInstance];
    [audioSession setActive:YES error:nil];
    
    NSURL* url=[[NSBundle mainBundle] URLForResource:@"fon" withExtension:@".m4a"];
    self.player=[[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
    [self.player setDelegate:self];
    [self.player play];
    sleep(3);
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
}

- (void)applicationWillTerminate:(UIApplication *)application {

}

@end

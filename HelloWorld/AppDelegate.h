//
//  AppDelegate.h
//  HelloWorld
//
//  Created by Benny Dalby on 11/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;
@property(retain,nonatomic)UITabBarController *myTab;

@end

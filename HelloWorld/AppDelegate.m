//
//  AppDelegate.m
//  HelloWorld
//
//  Created by Benny Dalby on 11/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"


@implementation AppDelegate

@synthesize window = _window;
@synthesize viewController = _viewController;
@synthesize myTab ;

- (void)dealloc
{
    NSLog(@"dealloc");
    [_window release];
    [_viewController release];
    [super dealloc];
}

-(void)TabCreate
{
    NSMutableArray * arrviewController=[[NSMutableArray alloc] init];
    UIViewController *tab = nil;
    UIImage *img ;
    NSString *tabtitle,*navtitle ;
    
    for (int i=0; i<1; i++)
    {
        switch (i){
                
            case 0:
                tabtitle=@"GREETING CARD" ;
                navtitle=@"GREETING CARD" ;
                img=[UIImage imageNamed:@"icon1.png"] ;
                
                tab=[[ViewController alloc]init];
                break;
            default:
                break;
        }
        
        UINavigationController *subcontroller=[[UINavigationController alloc] initWithRootViewController:tab];
        
        subcontroller.tabBarItem.image=img ;
        subcontroller.tabBarItem.title=tabtitle ;
        subcontroller.navigationBar.topItem.title=navtitle;
        subcontroller.navigationBar.backgroundColor=[UIColor greenColor];
        [arrviewController addObject:subcontroller];
        [subcontroller release] ;
        
    }
    
    
    
    myTab=[[UITabBarController alloc] init];
    myTab.viewControllers=arrviewController ;
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
        NSLog(@"application didFinishLaunchingWithOptions");
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    //self.viewController = [[[ViewController alloc] initWithNibName:@"ViewController" bundle:nil] autorelease];
    
    //calling init
//    self.viewController = [[ViewController alloc] init];
//    self.window.rootViewController = self.viewController;
    [self TabCreate ] ;
    self.window.rootViewController =myTab;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
        NSLog(@"applicationWillResignActive");
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
           NSLog(@"applicationDidEnterBackground");
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    NSLog(@"applicationWillEnterForeground");
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
        NSLog(@"applicationDidBecomeActive");
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
            NSLog(@"applicationWillTerminate");
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

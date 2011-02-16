//
//  MapKitAppDelegate.m
//  MapKit
//
//  Created by Peter Friese on 16.02.11.
//  Copyright 2011 itemis. All rights reserved.
//

#import "MapKitAppDelegate.h"
#import "FirstViewController.h"
#import "MapView.h"

@implementation MapKitAppDelegate

@synthesize window;
@synthesize tabBarController;


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after application launch.

    // Add the tab bar controller's view to the window and display.
	FirstViewController *view1 = [[[FirstViewController alloc] init] autorelease];
	view1.tabBarItem.title = @"View 1";
	
	FirstViewController *view2 = [[[FirstViewController alloc] init] autorelease];
	view2.tabBarItem.title = @"View 2";
	
	MapView *view3 = [[[MapView alloc] init] autorelease];
	view3.tabBarItem.title = @"Map";
	
	NSArray *viewControllers = [NSArray arrayWithObjects:view1, view2, view3, nil];
	tabBarController.viewControllers = viewControllers;
	[viewControllers release];
	
    [self.window addSubview:tabBarController.view];
    [self.window makeKeyAndVisible];

    return YES;
}


#pragma mark -
#pragma mark Memory management

- (void)dealloc {
    [tabBarController release];
    [window release];
    [super dealloc];
}

@end


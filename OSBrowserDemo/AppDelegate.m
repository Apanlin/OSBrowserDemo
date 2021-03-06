//
//  AppDelegate.m
//  BrowserDemoForMac
//
//  Created by huang haotao on 13-6-22.
//  Copyright (c) 2013年 黄 灏涛. All rights reserved.
//

#import "AppDelegate.h"
#import "MultiWindowsController.h"

@interface AppDelegate ()

@property (assign) NSWindowController *windowController;

@end

@implementation AppDelegate

@synthesize windowController;

- (void)dealloc
{
    [super dealloc];
}

- (void)applicationWillFinishLaunching:(NSNotification *)notification
{
    
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    [MultiWindowsController prepared];
    [[NSNotificationCenter defaultCenter] postNotificationName:NSWindowAddNewBrowserWindowNotification object:nil userInfo:nil];
}

- (BOOL)applicationShouldHandleReopen:(NSApplication *)theApplication hasVisibleWindows:(BOOL)flag
{
	return YES;
}

- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)theApplication
{
	return YES;
}

- (void)applicationWillTerminate:(NSNotification *)notification
{
	self.windowController = nil;
}


@end

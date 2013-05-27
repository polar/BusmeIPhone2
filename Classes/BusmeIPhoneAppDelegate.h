//
//  BusmeIPhoneAppDelegate.h
//  BusmeIPhone
//
//  Created by Polar on 5/25/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BusmeIPhoneViewController;

@interface BusmeIPhoneAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    BusmeIPhoneViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet BusmeIPhoneViewController *viewController;

@end


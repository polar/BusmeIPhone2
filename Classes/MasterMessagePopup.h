//
//  MasterMessagePopup.h
//  BusmeIPhone
//
//  Created by Polar on 5/26/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "com/adiron/busme/api/MasterMessage.h"


@interface MasterMessagePopup : UIViewController <UIAlertViewDelegate> {
	BOOL isShowing;
}
@property (retain) IBOutlet UIAlertView *alertView;
@property (retain) IBOutlet ComAdironBusmeApiMasterMessage *masterMessage;

@property (assign) BOOL isShowing;

-(MasterMessagePopup *) useMasterMessage:(ComAdironBusmeApiMasterMessage *)message;
-(MasterMessagePopup *) show;
-(MasterMessagePopup *) dismiss;

@end

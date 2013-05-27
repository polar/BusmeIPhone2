//
//  BusmeIPhoneViewController.h
//  BusmeIPhone
//
//  Created by Polar on 5/25/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AGAlertViewWithProgressbar.h"
#import "com/adiron/busme/api/MasterMessage.h"
#import "MasterMessagePopup.h"

@interface BusmeIPhoneViewController : UIViewController {


}
@property (retain) IBOutlet AGAlertViewWithProgressbar *progressDialog;
@property (retain) IBOutlet UIAlertView *welcomeDialog;

@property (retain) IBOutlet UIAlertView *alertDialog;
@property (retain) IBOutlet MasterMessagePopup *masterMessagePopup;

@property (retain) IBOutlet UIButton *button;

-(IBAction) testAction:(id)sender;
-(IBAction) UIShowProgressDialogEvent:(id) sender;
-(IBAction) UIDismissProgressDialogEevent:(id) sender;

-(id) UIShowProgressDialog:(id) sender withTitle:(NSString *)title withMessage:(NSString *)message;
																				
-(id) UIDismissProgressDialog:(id)sender;																				
@end


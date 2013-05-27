//
//  BusmeIPhoneViewController.m
//  BusmeIPhone
//
//  Created by Polar on 5/25/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "BusmeIPhoneViewController.h"
#import "BusmeOverlayManager.h"
#import "AGAlertViewWithProgressbar.h"
#import "iToast.h"

@implementation BusmeIPhoneViewController

@synthesize button;
@synthesize progressDialog;
@synthesize welcomeDialog;
@synthesize alertDialog;
@synthesize masterMessagePopup;

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	self.welcomeDialog = [[UIAlertView alloc] initWithTitle:@"Welcome" message:nil delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles:nil];
	self.alertDialog = [[UIAlertView alloc] initWithTitle:@"Hey" message:nil delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles:nil];
	self.progressDialog = [[AGAlertViewWithProgressbar alloc] initWithTitle:nil message:nil delegate:self cancelButtonTitle:nil otherButtonTitles:nil];
	self.masterMessagePopup = [[UIAlertView alloc] initWithTitle:@"Message" message:nil delegate:self cancelButtonTitle:@"OK" otherButtonTitles:@"Go", @"Remind Me Later",nil];
	
	UIButton * eatme = self.button;
	//[self.button initWithFrame:self.view.bounds];
	[self.view addSubview:self.button];	
}
- (IBAction) testAction:(id)sender {
	
	ComAdironBusmeApiMasterMessage *msg = [ComAdironBusmeApiMasterMessage alloc];
	msg.title = @"Message From Me";
	msg.content = @"This is a very long \n message \n over severla \n lines";

	[self UIShowMasterMessagePopupWithMasterMessage:msg];

}

- (void)handleSingleTap:(UITapGestureRecognizer *)recognizer {
	CGPoint location = [recognizer locationInView:[recognizer.view superview]];
	[self UIDismissProgressDialog:self];
}

// ProgressDialog
-(id) UIShowProgressDialog:(id) sender withTitle: (NSString *) title withMessage: (NSString *) message {
	
	[self.progressDialog setTitle:title];
	[self.progressDialog setMessage:message];	
	[self.progressDialog show];
	
	return progressDialog;
}

-(id) UIDismissProgressDialog:(id) sender {
	[self.progressDialog hide];
	
	[self UIShowLongToastwithMessage:@"Eatme"];
	[self UIShowAlertDialogWithTitle:@"This is an Alert" andMessage:@"Programing for iPhone Sucks"];
	return self;
}

-(IBAction) UIShowProgressDialogEvent:(id) sender{
	[self UIShowProgressDialog: self 
					 withTitle:@"Wecome to my machine"
				   withMessage:@"This is nuts"];
}

-(IBAction) UIDismissProgressDialogEvent:(id) sender {
	[self UIDismissProgressDialog:self];
}
  
/**
 * Toast Implementation
 */

-(BusmeIPhoneViewController *) UIShowLongToastwithMessage:(NSString *) message {
	[[[[iToast makeText:NSLocalizedString(message, @"")] 
	   setGravity:iToastGravityBottom] setDuration:iToastDurationLong] show];
	return self;
}

-(BusmeIPhoneViewController *) UIShowShortToastwithMessage:(NSString *) message {
	[[[iToast makeText:NSLocalizedString(message, @"")] 
	   setGravity:iToastGravityBottom] show];
	return self;
}

/**
 * AlertDialog
 */

-(BusmeIPhoneViewController *) UIShowAlertDialogWithTitle:(NSString *) title andMessage:(NSString *)message {
	
	[self.alertDialog setTitle:title];
	[self.alertDialog setMessage:message];
    [self.alertDialog show];
	  
	return self;
}

/**
 * Welcome Dialog
 */
-(BusmeIPhoneViewController *) UIShowWelcomeDialogWithName:(NSString *) name {
	NSString *title = [NSString stringWithFormat:@"Welcome to %@", name];
	[self.welcomeDialog setTitle:title];
	[self.welcomeDialog setMessage:@"Looking for Busme! Server"];
	[self.welcomeDialog show];
	return self;
}

-(BusmeIPhoneViewController *) UIDismissWelcomeDialog {
	[self.welcomeDialog dismissWithClickedButtonIndex:0 animated:YES];
	return self;
}

-(Boolean) UIShouldShowWelcome {
	// We need this in android if we do a reset.
	return YES;
}

/**
 * MasterMessage
 */
-(BusmeIPhoneViewController *) UIShowMasterMessagePopupWithMasterMessage: (ComAdironBusmeApiMasterMessage *) message {
	[self.masterMessagePopup useMasterMessage:message];
	[self.masterMessagePopup show];
	return self;
}
	// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    //return (interfaceOrientation == UIInterfaceOrientationPortrait);
	return YES;
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end

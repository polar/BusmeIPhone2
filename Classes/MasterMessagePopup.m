//
//  MasterMessagePopup.m
//  BusmeIPhone
//
//  Created by Polar on 5/26/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "MasterMessagePopup.h"
#import "iToast.h"


@implementation MasterMessagePopup
@synthesize alertView;
@synthesize masterMessage;
@synthesize isShowing;



- (MasterMessagePopup *) useMasterMessage:(ComAdironBusmeApiMasterMessage *)msg {
	self.masterMessage = msg;
	[self.alertView setTitle:msg.title];
	[self.alertView setMessage:msg.content];
	return self;
}

-(MasterMessagePopup *) show {
	[self.alertView show];
	self.isShowing = true;
	return self;
}
-(MasterMessagePopup *) dismiss {
	[self.alertView dismissWithClickedButtonIndex:0 animated:YES];
	self.isShowing = false;
	return self;
}
-(void) alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
	// We need to contact the message store and set this as seen.
	if (buttonIndex == 0) {
		self.masterMessage.seen = TRUE;
	} else if (buttonIndex == 1) {
		[[iToast makeText:self.masterMessage.goUrl] show];
	} else {
		// Remind me later
		[[iToast makeText:@"I'll Remind you later"] show];
	}	
	self.isShowing = false;
}

#pragma mark -
#pragma mark View lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
	
	self.alertView = [[UIAlertView alloc] initWithTitle:@"Message"
												message:nil 
											   delegate:self 
									  cancelButtonTitle:@"OK" 
									  otherButtonTitles:@"Go", @"Remind Me Later", nil];

	
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

/*
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}
*/
/*
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}
*/
/*
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}
*/
/*
- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}
*/
/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/


#pragma mark -
#pragma mark Memory management

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Relinquish ownership any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    // Relinquish ownership of anything that can be recreated in viewDidLoad or on demand.
    // For example: self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end


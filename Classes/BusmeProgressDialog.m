//
//  BusmeProgressDialog.m
//  BusmeIPhone
//
//  Created by Polar on 5/26/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "BusmeProgressDialog.h"


@implementation BusmeProgressDialog
@synthesize titleLabel;
@synthesize messageLabel;
@synthesize progressView;

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	[self.view setHidden: YES];
}

- (IBAction) show:(id) sender {
	[self.view setHidden:NO];
}
- (IBAction) dismiss:(id) sender {
	[self.view setHidden:YES];
}

- (BusmeProgressDialog *) set:(id) sender withTitle:(NSString *)title {
	self.titleLabel.text = title;
	return self;
}

- (BusmeProgressDialog *) set:(id) sender withMessage:(NSString *)message {
	self.messageLabel.text = message;
	return self;
}

- (BusmeProgressDialog *) setTitle:(NSString *)title {
	self.titleLabel.text = title;
	return self;
}

- (BusmeProgressDialog *) setMessage:(NSString *)message {
	self.messageLabel.text = message;
	return self;
}
/* 
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end

//
//  BusmeProgressDialog.h
//  BusmeIPhone
//
//  Created by Polar on 5/26/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface BusmeProgressDialog : UIViewController {

}

@property (retain) IBOutlet UILabel *titleLabel;
@property (retain) IBOutlet UILabel *messageLabel;
@property (retain) IBOutlet UIActivityIndicatorView *progressView;

- (IBAction) show:(id) sender;
- (IBAction) dismiss:(id) sender;

-(BusmeProgressDialog *) setTitle:(NSString *)title;
-(BusmeProgressDialog *) setMessage:(NSString *)message;
@end

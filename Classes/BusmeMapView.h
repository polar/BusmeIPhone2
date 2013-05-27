//
//  BusmeMapViewDelegate.h
//  MQOverlaySample
//
//  Created by Polar on 5/21/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MQMapKit/MQMapKit.h>


@interface BusmeMapView : MQMapView

// Method is missing from MQMapView. Maybe it's a MQ MK incompatibility problem?

- (void) scrollViewDidEndZooming: (MQMapView *)view withView:(MQMapView *)view atScale:(int)index;

@end
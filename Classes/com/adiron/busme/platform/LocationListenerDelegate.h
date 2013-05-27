//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/src/main/java/com/adiron/busme/platform/LocationListenerDelegate.java
//
//  Created by polar on 5/25/13.
//

@class ComAdironBusmePlatformLocation;

#import "JreEmulation.h"
#import "com/adiron/busme/platform/LocationListener.h"

@interface ComAdironBusmePlatformLocationListenerDelegate : NSObject < ComAdironBusmePlatformLocationListener > {
 @public
  id<ComAdironBusmePlatformLocationListener> delegate_;
}

@property (nonatomic, retain) id<ComAdironBusmePlatformLocationListener> delegate;

- (void)onLocationChangedWithComAdironBusmePlatformLocation:(ComAdironBusmePlatformLocation *)location;
- (void)onProviderDisabledWithNSString:(NSString *)provider;
- (void)onProviderEnabledWithNSString:(NSString *)provider;
- (void)onStatusChangedWithNSString:(NSString *)provider
                            withInt:(int)status;
- (id)initWithComAdironBusmePlatformLocationListener:(id<ComAdironBusmePlatformLocationListener>)delegate;
@end
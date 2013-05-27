//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/src/main/java/com/adiron/busme/platform/LocationListenerDelegate.java
//
//  Created by polar on 5/25/13.
//

#import "com/adiron/busme/platform/Location.h"
#import "com/adiron/busme/platform/LocationListener.h"
#import "com/adiron/busme/platform/LocationListenerDelegate.h"

@implementation ComAdironBusmePlatformLocationListenerDelegate

- (id<ComAdironBusmePlatformLocationListener>)delegate {
  return delegate_;
}
- (void)setDelegate:(id<ComAdironBusmePlatformLocationListener>)delegate {
  JreOperatorRetainedAssign(&delegate_, delegate);
}
@synthesize delegate = delegate_;

- (void)onLocationChangedWithComAdironBusmePlatformLocation:(ComAdironBusmePlatformLocation *)location {
  [((id<ComAdironBusmePlatformLocationListener>) NIL_CHK(delegate_)) onLocationChangedWithComAdironBusmePlatformLocation:location];
}

- (void)onProviderDisabledWithNSString:(NSString *)provider {
  [((id<ComAdironBusmePlatformLocationListener>) NIL_CHK(delegate_)) onProviderDisabledWithNSString:provider];
}

- (void)onProviderEnabledWithNSString:(NSString *)provider {
  [((id<ComAdironBusmePlatformLocationListener>) NIL_CHK(delegate_)) onProviderEnabledWithNSString:provider];
}

- (void)onStatusChangedWithNSString:(NSString *)provider
                            withInt:(int)status {
  [((id<ComAdironBusmePlatformLocationListener>) NIL_CHK(delegate_)) onStatusChangedWithNSString:provider withInt:status];
}

- (id)initWithComAdironBusmePlatformLocationListener:(id<ComAdironBusmePlatformLocationListener>)delegate {
  if ((self = [super init])) {
    self.delegate = delegate;
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&delegate_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ComAdironBusmePlatformLocationListenerDelegate *typedCopy = (ComAdironBusmePlatformLocationListenerDelegate *) copy;
  typedCopy.delegate = delegate_;
}

@end

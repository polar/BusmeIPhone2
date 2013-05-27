//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/src/main/java/com/adiron/busme/integration/DisplayPlaneModelController.java
//
//  Created by polar on 5/25/13.
//

#import "com/adiron/busme/api/MarkerInfo.h"
#import "com/adiron/busme/integration/BoundingBoxE6.h"
#import "com/adiron/busme/integration/DisplayPlaneModelController.h"
#import "com/adiron/busme/platform/JourneyDisplay.h"
#import "org/osmdroid/api/IGeoPoint.h"

@implementation ComAdironBusmeIntegrationDisplayPlaneModelController

- (void)setHighlightDurationWithLongInt:(long long int)highlightDuration {
}

- (void)setNearbyStateWithBOOL:(BOOL)b {
}

- (void)setOnlyActiveStateWithBOOL:(BOOL)b {
}

- (void)setNearbyDistanceWithInt:(int)nearbyDistance {
}

- (void)setSyncRefreshRateWithInt:(int)seconds {
}

- (void)addMarkerWithComAdironBusmeApiMarkerInfo:(ComAdironBusmeApiMarkerInfo *)marker {
}

- (void)removeMarkerWithComAdironBusmeApiMarkerInfo:(ComAdironBusmeApiMarkerInfo *)marker {
}

- (void)removeMarkerWithNSString:(NSString *)id_ {
}

- (void)removeAllMarkers {
}

- (void)setHighlightJourneyDisplayWithComAdironBusmePlatformJourneyDisplay:(ComAdironBusmePlatformJourneyDisplay *)route {
}

- (void)setTrackingJourneyDisplayWithComAdironBusmePlatformJourneyDisplay:(ComAdironBusmePlatformJourneyDisplay *)route {
}

- (void)animateToCurrentLocation {
}

- (void)addJourneyDisplayWithComAdironBusmePlatformJourneyDisplay:(ComAdironBusmePlatformJourneyDisplay *)route {
}

- (void)removeJourneyDisplayWithComAdironBusmePlatformJourneyDisplay:(ComAdironBusmePlatformJourneyDisplay *)route {
}

- (void)removeAllJourneyDisplays {
}

- (void)clearTileCache {
}

- (ComAdironBusmePlatformJourneyDisplay *)getHighlightJourneyDisplay {
  return nil;
}

- (ComAdironBusmePlatformJourneyDisplay *)getTrackingJourneyDisplay {
  return nil;
}

- (BOOL)isTracking {
  return NO;
}

- (id<OrgOsmdroidApiIGeoPoint>)getMyLocation {
  return nil;
}

- (void)notifyStateChange {
}

- (void)mapZoomToSpanWithComAdironBusmeIntegrationBoundingBoxE6:(ComAdironBusmeIntegrationBoundingBoxE6 *)boundingBox {
}

- (void)invalidate {
}

- (void)onCreate {
}

- (void)unsetHighlight {
}

- (void)unsetTracking {
}

- (id)init {
  return [super init];
}

- (void)dealloc {
  [super dealloc];
}

@end
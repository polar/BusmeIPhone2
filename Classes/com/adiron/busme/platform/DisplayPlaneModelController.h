//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/src/main/java/com/adiron/busme/platform/DisplayPlaneModelController.java
//
//  Created by polar on 5/25/13.
//

@class ComAdironBusmeApiMarkerInfo;
@class ComAdironBusmeIntegrationBoundingBoxE6;
@class ComAdironBusmeIntegrationDisplayPlaneModelController;
@class ComAdironBusmePlatformJourneyDisplay;
@protocol OrgOsmdroidApiIGeoPoint;

#import "JreEmulation.h"

@interface ComAdironBusmePlatformDisplayPlaneModelController : NSObject {
 @public
  ComAdironBusmeIntegrationDisplayPlaneModelController *delegate_;
}

@property (nonatomic, retain) ComAdironBusmeIntegrationDisplayPlaneModelController *delegate;

- (id)initWithComAdironBusmeIntegrationDisplayPlaneModelController:(ComAdironBusmeIntegrationDisplayPlaneModelController *)d;
- (ComAdironBusmeIntegrationDisplayPlaneModelController *)getIntegration;
- (void)setHighlightDurationWithLongInt:(long long int)highlightDuration;
- (void)setNearbyStateWithBOOL:(BOOL)b;
- (void)setOnlyActiveStateWithBOOL:(BOOL)b;
- (void)setNearbyDistanceWithInt:(int)nearbyDistance;
- (void)setSyncRefreshRateWithInt:(int)seconds;
- (void)addMarkerWithComAdironBusmeApiMarkerInfo:(ComAdironBusmeApiMarkerInfo *)marker;
- (void)removeMarkerWithComAdironBusmeApiMarkerInfo:(ComAdironBusmeApiMarkerInfo *)marker;
- (void)removeMarkerWithNSString:(NSString *)id_;
- (void)removeAllMarkers;
- (void)setHighlightJourneyDisplayWithComAdironBusmePlatformJourneyDisplay:(ComAdironBusmePlatformJourneyDisplay *)route;
- (ComAdironBusmePlatformJourneyDisplay *)getHighlightJourneyDisplay;
- (void)unsetHighlight;
- (void)setTrackingJourneyDisplayWithComAdironBusmePlatformJourneyDisplay:(ComAdironBusmePlatformJourneyDisplay *)route;
- (ComAdironBusmePlatformJourneyDisplay *)getTrackingJourneyDisplay;
- (BOOL)isTracking;
- (void)unsetTracking;
- (id<OrgOsmdroidApiIGeoPoint>)getMyLocation;
- (void)animateToCurrentLocation;
- (void)addJourneyDisplayWithComAdironBusmePlatformJourneyDisplay:(ComAdironBusmePlatformJourneyDisplay *)route;
- (void)removeJourneyDisplayWithComAdironBusmePlatformJourneyDisplay:(ComAdironBusmePlatformJourneyDisplay *)route;
- (void)removeAllJourneyDisplays;
- (void)notifyStateChange;
- (void)mapZoomToSpanWithComAdironBusmeIntegrationBoundingBoxE6:(ComAdironBusmeIntegrationBoundingBoxE6 *)boundingBox;
- (void)invalidate;
- (void)clearTileCache;
- (void)onCreate;
@end

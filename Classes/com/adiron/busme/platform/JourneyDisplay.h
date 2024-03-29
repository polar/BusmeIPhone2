//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/src/main/java/com/adiron/busme/platform/JourneyDisplay.java
//
//  Created by polar on 5/25/13.
//

@class ComAdironBusmeApiRoute;
@class ComAdironBusmePlatformActivityAPI;
@class ComAdironBusmePlatformJourneyBasketController;
@class IOSObjectArray;
@protocol ComAdironBusmePlatformJourneyDisplay_OnHiddenListener;
@protocol ComAdironBusmePlatformJourneyDisplay_OnJourneyDisplayLocationUpdateListener;

#import "JreEmulation.h"

@interface ComAdironBusmePlatformJourneyDisplay : NSObject {
 @public
  ComAdironBusmePlatformJourneyBasketController *journeyBasketController_;
  BOOL nameVisible_;
  BOOL nameHighlighted_;
  NSString *displayName_;
  id<ComAdironBusmePlatformJourneyDisplay_OnJourneyDisplayLocationUpdateListener> onJourneyDisplayLocationUpdateListener_;
  ComAdironBusmeApiRoute *route_;
  BOOL hidden_;
  BOOL tracking_;
  id<ComAdironBusmePlatformJourneyDisplay_OnHiddenListener> onHiddenListener_;
}

@property (nonatomic, retain) ComAdironBusmePlatformJourneyBasketController *journeyBasketController;
@property (nonatomic, assign) BOOL nameVisible;
@property (nonatomic, assign) BOOL nameHighlighted;
@property (nonatomic, copy) NSString *displayName;
@property (nonatomic, retain) id<ComAdironBusmePlatformJourneyDisplay_OnJourneyDisplayLocationUpdateListener> onJourneyDisplayLocationUpdateListener;
@property (nonatomic, retain) ComAdironBusmeApiRoute *route;
@property (nonatomic, assign) BOOL hidden;
@property (nonatomic, assign) BOOL tracking;
@property (nonatomic, retain) id<ComAdironBusmePlatformJourneyDisplay_OnHiddenListener> onHiddenListener;

- (id)initWithComAdironBusmePlatformJourneyBasketController:(ComAdironBusmePlatformJourneyBasketController *)controller
                                 withComAdironBusmeApiRoute:(ComAdironBusmeApiRoute *)route;
- (BOOL)isStarting;
- (BOOL)isFinished;
- (BOOL)isActive;
- (BOOL)hasActiveJourneys;
- (NSString *)getDisplayName;
- (BOOL)isNameVisible;
- (void)setNameVisibleWithBOOL:(BOOL)showName;
- (BOOL)isNameHighlighted;
- (void)setNameHighlightedWithBOOL:(BOOL)nameHighlighted;
- (ComAdironBusmePlatformActivityAPI *)getActivityAPI;
- (int)getIcon;
- (void)setOnJourneyDisplayLocationUpdateListenerWithComAdironBusmePlatformJourneyDisplay_OnJourneyDisplayLocationUpdateListener:(id<ComAdironBusmePlatformJourneyDisplay_OnJourneyDisplayLocationUpdateListener>)onJourneyDisplayLocationUpdateListener;
- (void)onLocationUpdateWithComAdironBusmeApiRoute:(ComAdironBusmeApiRoute *)route
                  withOrgOsmdroidApiIGeoPointArray:(IOSObjectArray *)locations;
- (ComAdironBusmeApiRoute *)getRoute;
- (BOOL)isPathHidden;
- (BOOL)isPathVisible;
- (void)setPathHiddenWithBOOL:(BOOL)hidden;
- (void)setPathVisibleWithBOOL:(BOOL)visible;
- (BOOL)isTracking;
- (void)setTrackingWithBOOL:(BOOL)tracking;
- (void)setOnHiddenListenerWithComAdironBusmePlatformJourneyDisplay_OnHiddenListener:(id<ComAdironBusmePlatformJourneyDisplay_OnHiddenListener>)listener;
- (void)notifyHiddenListenerWithBOOL:(BOOL)hidden;
@end

@protocol ComAdironBusmePlatformJourneyDisplay_OnJourneyDisplayLocationUpdateListener < NSObject >
- (void)onJourneyDisplayLocationUpdateWithComAdironBusmePlatformJourneyDisplay:(ComAdironBusmePlatformJourneyDisplay *)journeyDisplay
                                              withOrgOsmdroidApiIGeoPointArray:(IOSObjectArray *)locations;
@end

@protocol ComAdironBusmePlatformJourneyDisplay_OnHiddenListener < NSObject >
- (void)onHiddenWithComAdironBusmePlatformJourneyDisplay:(ComAdironBusmePlatformJourneyDisplay *)JourneyDisplay
                                                withBOOL:(BOOL)hidden;
@end

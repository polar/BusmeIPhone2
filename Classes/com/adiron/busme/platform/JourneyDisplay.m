//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/src/main/java/com/adiron/busme/platform/JourneyDisplay.java
//
//  Created by polar on 5/25/13.
//

#import "IOSObjectArray.h"
#import "com/adiron/busme/R.h"
#import "com/adiron/busme/api/Route.h"
#import "com/adiron/busme/platform/ActivityAPI.h"
#import "com/adiron/busme/platform/JourneyBasketController.h"
#import "com/adiron/busme/platform/JourneyDisplay.h"
#import "java/util/Date.h"
#import "java/util/Iterator.h"
#import "java/util/List.h"

@implementation ComAdironBusmePlatformJourneyDisplay

- (ComAdironBusmePlatformJourneyBasketController *)journeyBasketController {
  return journeyBasketController_;
}
- (void)setJourneyBasketController:(ComAdironBusmePlatformJourneyBasketController *)journeyBasketController {
  JreOperatorRetainedAssign(&journeyBasketController_, journeyBasketController);
}
@synthesize journeyBasketController = journeyBasketController_;
@synthesize nameVisible = nameVisible_;
@synthesize nameHighlighted = nameHighlighted_;
- (NSString *)displayName {
  return displayName_;
}
- (void)setDisplayName:(NSString *)displayName {
  JreOperatorRetainedAssign(&displayName_, displayName);
}
@synthesize displayName = displayName_;
- (id<ComAdironBusmePlatformJourneyDisplay_OnJourneyDisplayLocationUpdateListener>)onJourneyDisplayLocationUpdateListener {
  return onJourneyDisplayLocationUpdateListener_;
}
- (void)setOnJourneyDisplayLocationUpdateListener:(id<ComAdironBusmePlatformJourneyDisplay_OnJourneyDisplayLocationUpdateListener>)onJourneyDisplayLocationUpdateListener {
  JreOperatorRetainedAssign(&onJourneyDisplayLocationUpdateListener_, onJourneyDisplayLocationUpdateListener);
}
@synthesize onJourneyDisplayLocationUpdateListener = onJourneyDisplayLocationUpdateListener_;
- (ComAdironBusmeApiRoute *)route {
  return route_;
}
- (void)setRoute:(ComAdironBusmeApiRoute *)route {
  JreOperatorRetainedAssign(&route_, route);
}
@synthesize route = route_;
@synthesize hidden = hidden_;
@synthesize tracking = tracking_;
- (id<ComAdironBusmePlatformJourneyDisplay_OnHiddenListener>)onHiddenListener {
  return onHiddenListener_;
}
- (void)setOnHiddenListener:(id<ComAdironBusmePlatformJourneyDisplay_OnHiddenListener>)onHiddenListener {
  JreOperatorRetainedAssign(&onHiddenListener_, onHiddenListener);
}
@synthesize onHiddenListener = onHiddenListener_;

- (id)initWithComAdironBusmePlatformJourneyBasketController:(ComAdironBusmePlatformJourneyBasketController *)controller
                                 withComAdironBusmeApiRoute:(ComAdironBusmeApiRoute *)route {
  if ((self = [super init])) {
    hidden_ = NO;
    JreOperatorRetainedAssign(&onHiddenListener_, nil);
    self.route = route;
    self.journeyBasketController = controller;
  }
  return self;
}

- (BOOL)isStarting {
  return [[self getRoute] isStartingJourneyWithInt:[((ComAdironBusmePlatformActivityAPI *) NIL_CHK([self getRoute].busAPI)) getActiveStartDisplayThreshold] withLongInt:[((JavaUtilDate *) [[[JavaUtilDate alloc] init] autorelease]) getTime]];
}

- (BOOL)isFinished {
  return [[self getRoute] isFinished];
}

- (BOOL)isActive {
  return [[self getRoute] isActiveJourney] && ![self isFinished] || [self isStarting];
}

- (BOOL)hasActiveJourneys {
  if ([[self getRoute] isRouteDefinition]) {
    {
      id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [[((ComAdironBusmePlatformJourneyBasketController *) NIL_CHK(self.journeyBasketController)) getJourneyDisplays] iterator]);
      while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
        ComAdironBusmePlatformJourneyDisplay *jd = ((ComAdironBusmePlatformJourneyDisplay *) [((id<JavaUtilIterator>) NIL_CHK(iter__)) next]);
        if ([((ComAdironBusmePlatformJourneyDisplay *) NIL_CHK(jd)) isActive]) {
          if ([[[((ComAdironBusmePlatformJourneyDisplay *) NIL_CHK(jd)) getRoute] getCode] isEqual:[[self getRoute] getCode]]) {
            return YES;
          }
        }
      }
    }
  }
  return NO;
}

- (NSString *)getDisplayName {
  if ([self hasActiveJourneys]) {
    JreOperatorRetainedAssign(&displayName_, @"*");
  }
  else {
    JreOperatorRetainedAssign(&displayName_, @" ");
  }
  if ([[self getRoute] isJourney]) {
    JreOperatorRetainedAssign(&displayName_, [NSString stringWithFormat:@"%@%@", displayName_, [NSString stringWithFormat:@" %3@ %@" , [[self getRoute] getCode], [[self getRoute] getName], nil]]);
  }
  else {
    JreOperatorRetainedAssign(&displayName_, [NSString stringWithFormat:@"%@%@", displayName_, [NSString stringWithFormat:@" %3@ %@" , [[self getRoute] getCode], [[self getRoute] getName], nil]]);
  }
  return [[self getRoute] getName];
}

- (BOOL)isNameVisible {
  return nameVisible_ && ![[self getRoute] isFinished];
}

- (void)setNameVisibleWithBOOL:(BOOL)showName {
  self.nameVisible = showName;
}

- (BOOL)isNameHighlighted {
  return nameHighlighted_;
}

- (void)setNameHighlightedWithBOOL:(BOOL)nameHighlighted {
  self.nameHighlighted = nameHighlighted;
}

- (ComAdironBusmePlatformActivityAPI *)getActivityAPI {
  return [self getRoute].busAPI;
}

- (int)getIcon {
  int drawable = -1;
  ;
  if ([[self getRoute] isRouteDefinition]) {
    if ([self hasActiveJourneys]) {
      drawable = ComAdironBusmeR_drawable_route_icon_active;
    }
    else {
      drawable = ComAdironBusmeR_drawable_route_icon;
    }
  }
  else {
    if ([self isTracking]) {
      drawable = ComAdironBusmeR_drawable_green_arrow_icon;
    }
    else if ([[self getRoute] isActiveJourney]) {
      drawable = ComAdironBusmeR_drawable_blue_arrow_icon;
    }
    else if ([[self getRoute] isStartingJourney]) {
      drawable = ComAdironBusmeR_drawable_purple_dot_icon;
    }
    else {
      drawable = ComAdironBusmeR_drawable_bus_icon_active;
    }
  }
  return drawable;
}

- (void)setOnJourneyDisplayLocationUpdateListenerWithComAdironBusmePlatformJourneyDisplay_OnJourneyDisplayLocationUpdateListener:(id<ComAdironBusmePlatformJourneyDisplay_OnJourneyDisplayLocationUpdateListener>)onJourneyDisplayLocationUpdateListener {
  self.onJourneyDisplayLocationUpdateListener = onJourneyDisplayLocationUpdateListener;
}

- (void)onLocationUpdateWithComAdironBusmeApiRoute:(ComAdironBusmeApiRoute *)route
                  withOrgOsmdroidApiIGeoPointArray:(IOSObjectArray *)locations {
  if (self.onJourneyDisplayLocationUpdateListener != nil) {
    [self.onJourneyDisplayLocationUpdateListener onJourneyDisplayLocationUpdateWithComAdironBusmePlatformJourneyDisplay:self withOrgOsmdroidApiIGeoPointArray:locations];
  }
}

- (ComAdironBusmeApiRoute *)getRoute {
  return route_;
}

- (BOOL)isPathHidden {
  return hidden_;
}

- (BOOL)isPathVisible {
  return !hidden_;
}

- (void)setPathHiddenWithBOOL:(BOOL)hidden {
  self.hidden = hidden;
  [self notifyHiddenListenerWithBOOL:hidden];
}

- (void)setPathVisibleWithBOOL:(BOOL)visible {
  self.hidden = !visible;
  [self notifyHiddenListenerWithBOOL:hidden_];
}

- (BOOL)isTracking {
  return tracking_;
}

- (void)setTrackingWithBOOL:(BOOL)tracking {
  self.tracking = tracking;
}

- (void)setOnHiddenListenerWithComAdironBusmePlatformJourneyDisplay_OnHiddenListener:(id<ComAdironBusmePlatformJourneyDisplay_OnHiddenListener>)listener {
  JreOperatorRetainedAssign(&onHiddenListener_, listener);
}

- (void)notifyHiddenListenerWithBOOL:(BOOL)hidden {
  if (onHiddenListener_ != nil) {
    [onHiddenListener_ onHiddenWithComAdironBusmePlatformJourneyDisplay:self withBOOL:hidden];
  }
}

- (void)dealloc {
  JreOperatorRetainedAssign(&onHiddenListener_, nil);
  JreOperatorRetainedAssign(&route_, nil);
  JreOperatorRetainedAssign(&onJourneyDisplayLocationUpdateListener_, nil);
  JreOperatorRetainedAssign(&displayName_, nil);
  JreOperatorRetainedAssign(&journeyBasketController_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ComAdironBusmePlatformJourneyDisplay *typedCopy = (ComAdironBusmePlatformJourneyDisplay *) copy;
  typedCopy.journeyBasketController = journeyBasketController_;
  typedCopy.nameVisible = nameVisible_;
  typedCopy.nameHighlighted = nameHighlighted_;
  typedCopy.displayName = displayName_;
  typedCopy.onJourneyDisplayLocationUpdateListener = onJourneyDisplayLocationUpdateListener_;
  typedCopy.route = route_;
  typedCopy.hidden = hidden_;
  typedCopy.tracking = tracking_;
  typedCopy.onHiddenListener = onHiddenListener_;
}

@end

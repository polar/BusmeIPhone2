//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/src/main/java/com/adiron/busme/platform/MarkerBasket.java
//
//  Created by polar on 5/25/13.
//

@class ComAdironBusmeApiMarkerInfo;
@class ComAdironBusmePlatformActivityAPI;
@class ComAdironBusmePlatformBusmeActivityController;
@class ComAdironBusmePlatformLocation;
@class ComAdironBusmePlatformLocationManager;
@class ComAdironBusmePlatformMarkerBasket_Starter;
@protocol JavaUtilCollection;
@protocol JavaUtilMap;

#import "JreEmulation.h"
#import "com/adiron/busme/platform/LocationListener.h"
#import "java/lang/Runnable.h"

@interface ComAdironBusmePlatformMarkerBasket : NSObject < ComAdironBusmePlatformLocationListener > {
 @public
  ComAdironBusmePlatformActivityAPI *activityAPI_;
  ComAdironBusmePlatformLocationManager *locationManager_;
  id<JavaUtilMap> markers_;
  ComAdironBusmePlatformBusmeActivityController *busmeActivityController_;
  ComAdironBusmePlatformMarkerBasket_Starter *starter_;
  BOOL stopped_;
}

@property (nonatomic, retain) ComAdironBusmePlatformActivityAPI *activityAPI;
@property (nonatomic, retain) ComAdironBusmePlatformLocationManager *locationManager;
@property (nonatomic, retain) id<JavaUtilMap> markers;
@property (nonatomic, retain) ComAdironBusmePlatformBusmeActivityController *busmeActivityController;
@property (nonatomic, retain) ComAdironBusmePlatformMarkerBasket_Starter *starter;
@property (nonatomic, assign) BOOL stopped;

+ (NSString *)LOGTAG;
- (id)initWithComAdironBusmePlatformActivityAPI:(ComAdironBusmePlatformActivityAPI *)api
withComAdironBusmePlatformBusmeActivityController:(ComAdironBusmePlatformBusmeActivityController *)controller;
- (void)start;
- (void)stop;
- (void)onLocationChangedWithComAdironBusmePlatformLocation:(ComAdironBusmePlatformLocation *)location;
- (BOOL)addMarkerWithComAdironBusmeApiMarkerInfo:(ComAdironBusmeApiMarkerInfo *)marker;
- (void)removeMarkerWithComAdironBusmeApiMarkerInfo:(ComAdironBusmeApiMarkerInfo *)marker;
- (void)removeMarkerWithNSString:(NSString *)id_;
- (void)onProviderDisabledWithNSString:(NSString *)provider;
- (void)onProviderEnabledWithNSString:(NSString *)provider;
- (void)onStatusChangedWithNSString:(NSString *)provider
                            withInt:(int)status;
- (id<JavaUtilCollection>)getMarkers;
- (void)resetSeenMarkers;
@end

@interface ComAdironBusmePlatformMarkerBasket_Starter : NSObject < JavaLangRunnable > {
 @public
  ComAdironBusmePlatformMarkerBasket *this$0_;
}

@property (nonatomic, retain) ComAdironBusmePlatformMarkerBasket *this$0;

- (void)run;
- (id)initWithComAdironBusmePlatformMarkerBasket:(ComAdironBusmePlatformMarkerBasket *)outer$;
@end

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/src/main/java/com/adiron/busme/platform/BusmeActivityController.java
//
//  Created by polar on 5/25/13.
//

@class ComAdironBusmeApiBannerInfo;
@class ComAdironBusmeApiMarkerInfo;
@class ComAdironBusmeIntegrationBoundingBoxE6;
@class ComAdironBusmePlatformActivityAPI;
@class ComAdironBusmePlatformBannerBasket;
@class ComAdironBusmePlatformBannersController;
@class ComAdironBusmePlatformBusmeActivityController_$6;
@class ComAdironBusmePlatformBusmeActivityController_MyBannersResponseListener;
@class ComAdironBusmePlatformBusmeActivityController_MyJourneysCurrentLocationResponseListener;
@class ComAdironBusmePlatformBusmeActivityController_MyMarkersResponseListener;
@class ComAdironBusmePlatformBusmeActivityController_MyMasterMessageResponseListener;
@class ComAdironBusmePlatformBusmeActivityController_StateEnum;
@class ComAdironBusmePlatformDisplayPlaneModelController;
@class ComAdironBusmePlatformHandler;
@class ComAdironBusmePlatformJourneyBasket;
@class ComAdironBusmePlatformJourneyBasketController;
@class ComAdironBusmePlatformJourneyDisplay;
@class ComAdironBusmePlatformMarkerBasket;
@class ComAdironBusmePlatformMasterMessageBasket;
@class ComAdironBusmePlatformMessageStore;
@class JavaIoIOException;
@class JavaUtilDate;
@protocol JavaUtilList;
@protocol JavaUtilMap;

#import "JreEmulation.h"
#import "com/adiron/busme/platform/BannersRequestProcessor.h"
#import "com/adiron/busme/platform/JourneyBasketController.h"
#import "com/adiron/busme/platform/JourneyBasketSync.h"
#import "com/adiron/busme/platform/JourneysCurrentLocationRequestProcessor.h"
#import "com/adiron/busme/platform/JourneysSyncRequestProcessor.h"
#import "com/adiron/busme/platform/MarkersRequestProcessor.h"
#import "com/adiron/busme/platform/MasterMessagesRequestProcessor.h"
#import "com/adiron/busme/platform/RequestUpdater.h"
#import "java/lang/Enum.h"
#import "java/lang/Runnable.h"

@interface ComAdironBusmePlatformBusmeActivityController : NSObject {
 @public
  ComAdironBusmePlatformBusmeActivityController_StateEnum *state_;
  ComAdironBusmePlatformActivityAPI *activityAPI_;
  ComAdironBusmePlatformJourneyBasket *journeyBasket_;
  ComAdironBusmePlatformMarkerBasket *markerBasket_;
  ComAdironBusmePlatformBannerBasket *bannerBasket_;
  ComAdironBusmePlatformMasterMessageBasket *messageBasket_;
  ComAdironBusmePlatformBannersController *bannersController_;
  ComAdironBusmePlatformDisplayPlaneModelController *displayPlaneModelController_;
  int updateRate_;
  ComAdironBusmePlatformRequestUpdater *requestUpdater_;
  int syncRate_;
  ComAdironBusmePlatformRequestUpdater *journeyBasketSyncUpdater_;
  ComAdironBusmePlatformMasterMessageBasket *masterMessageBasket_;
  ComAdironBusmePlatformJourneyBasketController *journeyBasketController_;
  BOOL nearbyState_;
  int nearbyDistance_;
  int syncRefreshRate_;
  BOOL onlyActiveState_;
}

@property (nonatomic, retain) ComAdironBusmePlatformBusmeActivityController_StateEnum *state;
@property (nonatomic, retain) ComAdironBusmePlatformActivityAPI *activityAPI;
@property (nonatomic, retain) ComAdironBusmePlatformJourneyBasket *journeyBasket;
@property (nonatomic, retain) ComAdironBusmePlatformMarkerBasket *markerBasket;
@property (nonatomic, retain) ComAdironBusmePlatformBannerBasket *bannerBasket;
@property (nonatomic, retain) ComAdironBusmePlatformMasterMessageBasket *messageBasket;
@property (nonatomic, retain) ComAdironBusmePlatformBannersController *bannersController;
@property (nonatomic, retain) ComAdironBusmePlatformDisplayPlaneModelController *displayPlaneModelController;
@property (nonatomic, assign) int updateRate;
@property (nonatomic, retain) ComAdironBusmePlatformRequestUpdater *requestUpdater;
@property (nonatomic, assign) int syncRate;
@property (nonatomic, retain) ComAdironBusmePlatformRequestUpdater *journeyBasketSyncUpdater;
@property (nonatomic, retain) ComAdironBusmePlatformMasterMessageBasket *masterMessageBasket;
@property (nonatomic, retain) ComAdironBusmePlatformJourneyBasketController *journeyBasketController;
@property (nonatomic, assign) BOOL nearbyState;
@property (nonatomic, assign) int nearbyDistance;
@property (nonatomic, assign) int syncRefreshRate;
@property (nonatomic, assign) BOOL onlyActiveState;

+ (NSString *)LOGTAG;
- (ComAdironBusmePlatformHandler *)getUIHandler;
- (ComAdironBusmePlatformMessageStore *)getMessageStore;
- (ComAdironBusmePlatformMarkerBasket *)getMarkerBasket;
- (ComAdironBusmePlatformMasterMessageBasket *)getMessageBasket;
- (void)setMessageBasketWithComAdironBusmePlatformMasterMessageBasket:(ComAdironBusmePlatformMasterMessageBasket *)messageBasket;
- (ComAdironBusmePlatformBannerBasket *)getBannerBasket;
- (void)setBannerBasketWithComAdironBusmePlatformBannerBasket:(ComAdironBusmePlatformBannerBasket *)bannerBasket;
- (ComAdironBusmePlatformDisplayPlaneModelController *)getDisplayPlaneModelController;
- (void)setDisplayPlaneModelControllerWithComAdironBusmePlatformDisplayPlaneModelController:(ComAdironBusmePlatformDisplayPlaneModelController *)displayPlaneModelController;
- (id)initWithComAdironBusmePlatformActivityAPI:(ComAdironBusmePlatformActivityAPI *)api;
- (ComAdironBusmePlatformActivityAPI *)getActivityAPI;
- (ComAdironBusmePlatformJourneyBasket *)getJourneyBasket;
- (ComAdironBusmePlatformJourneyBasketController *)getJourneyBasketController;
- (int)getUpdateRate;
- (void)setUpdateRateWithInt:(int)rate;
- (void)setupUpdater;
- (int)getSyncRate;
- (void)setSyncRateWithInt:(int)rate;
- (void)setupJourneyBasketUpdater;
- (void)onCreate;
- (ComAdironBusmePlatformJourneyBasket *)setupJourneyBasket;
- (void)onStart;
- (void)addDisplayMarkerWithComAdironBusmeApiMarkerInfo:(ComAdironBusmeApiMarkerInfo *)marker;
- (void)removeDisplayMarkerWithComAdironBusmeApiMarkerInfo:(ComAdironBusmeApiMarkerInfo *)marker;
- (void)removeDisplayMarkerWithNSString:(NSString *)id_;
- (void)addDisplayBannerWithComAdironBusmeApiBannerInfo:(ComAdironBusmeApiBannerInfo *)banner;
- (void)removeDisplayBannerWithComAdironBusmeApiBannerInfo:(ComAdironBusmeApiBannerInfo *)banner;
- (void)removeAllDisplayMarkers;
- (void)onResume;
- (void)onPause;
- (void)onStop;
- (void)onRestart;
- (void)onDestroy;
- (void)setNearbyStateWithBOOL:(BOOL)b;
- (void)setNearbyDistanceWithInt:(int)dist;
- (void)forceSync;
- (void)setSyncRefreshRateWithInt:(int)seconds;
- (void)forceReload;
- (void)setOnlyActiveStateWithBOOL:(BOOL)b;
- (id<JavaUtilList>)getAllRoutes;
- (id<JavaUtilList>)getAllActiveJourneys;
- (id<JavaUtilList>)getAllJourneys;
- (void)mapZoomToSpanWithComAdironBusmeIntegrationBoundingBoxE6:(ComAdironBusmeIntegrationBoundingBoxE6 *)boundingBox;
- (void)invalidate;
- (void)rollBannerWithBOOL:(BOOL)b;
@end

typedef enum {
  ComAdironBusmePlatformBusmeActivityController_State_CREATE = 0,
  ComAdironBusmePlatformBusmeActivityController_State_START = 1,
  ComAdironBusmePlatformBusmeActivityController_State_RESUME = 2,
  ComAdironBusmePlatformBusmeActivityController_State_PAUSE = 3,
  ComAdironBusmePlatformBusmeActivityController_State_STOP = 4,
  ComAdironBusmePlatformBusmeActivityController_State_RESTART = 5,
  ComAdironBusmePlatformBusmeActivityController_State_DESTROY = 6,
} ComAdironBusmePlatformBusmeActivityController_State;

@interface ComAdironBusmePlatformBusmeActivityController_StateEnum : JavaLangEnum < NSCopying > {
}
+ (ComAdironBusmePlatformBusmeActivityController_StateEnum *)CREATE;
+ (ComAdironBusmePlatformBusmeActivityController_StateEnum *)START;
+ (ComAdironBusmePlatformBusmeActivityController_StateEnum *)RESUME;
+ (ComAdironBusmePlatformBusmeActivityController_StateEnum *)PAUSE;
+ (ComAdironBusmePlatformBusmeActivityController_StateEnum *)STOP;
+ (ComAdironBusmePlatformBusmeActivityController_StateEnum *)RESTART;
+ (ComAdironBusmePlatformBusmeActivityController_StateEnum *)DESTROY;
+ (IOSObjectArray *)values;
+ (ComAdironBusmePlatformBusmeActivityController_StateEnum *)valueOfWithNSString:(NSString *)name;
- (id)copyWithZone:(NSZone *)zone;
- (id)initWithNSString:(NSString *)name withInt:(int)ordinal;
@end

@interface ComAdironBusmePlatformBusmeActivityController_RemoveRouteFromView : NSObject < JavaLangRunnable > {
 @public
  ComAdironBusmePlatformBusmeActivityController *this$0_;
  ComAdironBusmePlatformJourneyDisplay *journey_;
}

@property (nonatomic, retain) ComAdironBusmePlatformBusmeActivityController *this$0;
@property (nonatomic, retain) ComAdironBusmePlatformJourneyDisplay *journey;

- (id)initWithComAdironBusmePlatformBusmeActivityController:(ComAdironBusmePlatformBusmeActivityController *)outer$
                   withComAdironBusmePlatformJourneyDisplay:(ComAdironBusmePlatformJourneyDisplay *)journey;
- (void)run;
@end

@interface ComAdironBusmePlatformBusmeActivityController_AddRouteToView : NSObject < JavaLangRunnable > {
 @public
  ComAdironBusmePlatformBusmeActivityController *this$0_;
  ComAdironBusmePlatformJourneyDisplay *journey_;
}

@property (nonatomic, retain) ComAdironBusmePlatformBusmeActivityController *this$0;
@property (nonatomic, retain) ComAdironBusmePlatformJourneyDisplay *journey;

- (id)initWithComAdironBusmePlatformBusmeActivityController:(ComAdironBusmePlatformBusmeActivityController *)outer$
                   withComAdironBusmePlatformJourneyDisplay:(ComAdironBusmePlatformJourneyDisplay *)journey;
- (void)run;
@end

@interface ComAdironBusmePlatformBusmeActivityController_NotifyStateChange : NSObject < JavaLangRunnable > {
 @public
  ComAdironBusmePlatformBusmeActivityController *this$0_;
}

@property (nonatomic, retain) ComAdironBusmePlatformBusmeActivityController *this$0;

- (void)run;
- (id)initWithComAdironBusmePlatformBusmeActivityController:(ComAdironBusmePlatformBusmeActivityController *)outer$;
@end

@interface ComAdironBusmePlatformBusmeActivityController_MyJourneyDisplayRemovedListener : NSObject < ComAdironBusmePlatformJourneyBasketController_OnJourneyDisplayRemovedListener > {
 @public
  ComAdironBusmePlatformBusmeActivityController *this$0_;
}

@property (nonatomic, retain) ComAdironBusmePlatformBusmeActivityController *this$0;

- (void)onJourneyDisplayRemovedPostWithComAdironBusmePlatformJourneyBasketController:(ComAdironBusmePlatformJourneyBasketController *)controller
                                             withComAdironBusmePlatformJourneyBasket:(ComAdironBusmePlatformJourneyBasket *)basket
                                            withComAdironBusmePlatformJourneyDisplay:(ComAdironBusmePlatformJourneyDisplay *)journeyDisplay;
- (void)onJourneyDisplayRemovedPreWithComAdironBusmePlatformJourneyBasketController:(ComAdironBusmePlatformJourneyBasketController *)controller
                                            withComAdironBusmePlatformJourneyBasket:(ComAdironBusmePlatformJourneyBasket *)basket
                                           withComAdironBusmePlatformJourneyDisplay:(ComAdironBusmePlatformJourneyDisplay *)JourneyDisplay;
- (id)initWithComAdironBusmePlatformBusmeActivityController:(ComAdironBusmePlatformBusmeActivityController *)outer$;
@end

@interface ComAdironBusmePlatformBusmeActivityController_MyJourneyDisplayAddedListener : NSObject < ComAdironBusmePlatformJourneyBasketController_OnJourneyDisplayAddedListener > {
 @public
  ComAdironBusmePlatformBusmeActivityController *this$0_;
}

@property (nonatomic, retain) ComAdironBusmePlatformBusmeActivityController *this$0;

- (void)onJourneyDisplayAddedPostWithComAdironBusmePlatformJourneyBasketController:(ComAdironBusmePlatformJourneyBasketController *)controller
                                           withComAdironBusmePlatformJourneyBasket:(ComAdironBusmePlatformJourneyBasket *)basket
                                          withComAdironBusmePlatformJourneyDisplay:(ComAdironBusmePlatformJourneyDisplay *)journeyDisplay;
- (void)onJourneyDisplayAddedPreWithComAdironBusmePlatformJourneyBasketController:(ComAdironBusmePlatformJourneyBasketController *)controller
                                          withComAdironBusmePlatformJourneyBasket:(ComAdironBusmePlatformJourneyBasket *)basket
                                         withComAdironBusmePlatformJourneyDisplay:(ComAdironBusmePlatformJourneyDisplay *)journeyDisplay;
- (id)initWithComAdironBusmePlatformBusmeActivityController:(ComAdironBusmePlatformBusmeActivityController *)outer$;
@end

@interface ComAdironBusmePlatformBusmeActivityController_MyJourneyBasketControllerUpdateListener : NSObject < ComAdironBusmePlatformJourneyBasketController_OnUpdateListener > {
 @public
  ComAdironBusmePlatformBusmeActivityController *this$0_;
}

@property (nonatomic, retain) ComAdironBusmePlatformBusmeActivityController *this$0;

- (void)onUpdateWithComAdironBusmePlatformJourneyBasketController:(ComAdironBusmePlatformJourneyBasketController *)controller;
- (id)initWithComAdironBusmePlatformBusmeActivityController:(ComAdironBusmePlatformBusmeActivityController *)outer$;
@end

@interface ComAdironBusmePlatformBusmeActivityController_MyBannersResponseListener : NSObject < ComAdironBusmePlatformBannersRequestProcessor_OnBannersResponseListener > {
 @public
  ComAdironBusmePlatformBusmeActivityController *this$0_;
}

@property (nonatomic, retain) ComAdironBusmePlatformBusmeActivityController *this$0;

- (void)onResponseWithJavaUtilMap:(id<JavaUtilMap>)banners;
- (void)doitWithJavaUtilMap:(id<JavaUtilMap>)banners;
- (id)initWithComAdironBusmePlatformBusmeActivityController:(ComAdironBusmePlatformBusmeActivityController *)outer$;
@end

@interface ComAdironBusmePlatformBusmeActivityController_MyBannersResponseListener_$1 : NSObject < JavaLangRunnable > {
 @public
  ComAdironBusmePlatformBusmeActivityController_MyBannersResponseListener *this$0_;
  id<JavaUtilMap> val$banners_;
}

@property (nonatomic, retain) ComAdironBusmePlatformBusmeActivityController_MyBannersResponseListener *this$0;
@property (nonatomic, retain) id<JavaUtilMap> val$banners;

- (void)run;
- (id)initWithComAdironBusmePlatformBusmeActivityController_MyBannersResponseListener:(ComAdironBusmePlatformBusmeActivityController_MyBannersResponseListener *)outer$
                                                                      withJavaUtilMap:(id<JavaUtilMap>)capture$0;
@end

@interface ComAdironBusmePlatformBusmeActivityController_MyMarkersResponseListener : NSObject < ComAdironBusmePlatformMarkersRequestProcessor_OnMarkersResponseListener > {
 @public
  ComAdironBusmePlatformBusmeActivityController *this$0_;
}

@property (nonatomic, retain) ComAdironBusmePlatformBusmeActivityController *this$0;

- (void)onResponseWithJavaUtilMap:(id<JavaUtilMap>)markers;
- (void)doitWithJavaUtilMap:(id<JavaUtilMap>)markers;
- (id)initWithComAdironBusmePlatformBusmeActivityController:(ComAdironBusmePlatformBusmeActivityController *)outer$;
@end

@interface ComAdironBusmePlatformBusmeActivityController_MyMarkersResponseListener_$1 : NSObject < JavaLangRunnable > {
 @public
  ComAdironBusmePlatformBusmeActivityController_MyMarkersResponseListener *this$0_;
  id<JavaUtilMap> val$markers_;
}

@property (nonatomic, retain) ComAdironBusmePlatformBusmeActivityController_MyMarkersResponseListener *this$0;
@property (nonatomic, retain) id<JavaUtilMap> val$markers;

- (void)run;
- (id)initWithComAdironBusmePlatformBusmeActivityController_MyMarkersResponseListener:(ComAdironBusmePlatformBusmeActivityController_MyMarkersResponseListener *)outer$
                                                                      withJavaUtilMap:(id<JavaUtilMap>)capture$0;
@end

@interface ComAdironBusmePlatformBusmeActivityController_MyMasterMessageResponseListener : NSObject < ComAdironBusmePlatformMasterMessagesRequestProcessor_OnMasterMessagesResponseListener > {
 @public
  ComAdironBusmePlatformBusmeActivityController *this$0_;
}

@property (nonatomic, retain) ComAdironBusmePlatformBusmeActivityController *this$0;

- (void)onResponseWithJavaUtilMap:(id<JavaUtilMap>)messages;
- (void)doitWithJavaUtilMap:(id<JavaUtilMap>)messages;
- (id)initWithComAdironBusmePlatformBusmeActivityController:(ComAdironBusmePlatformBusmeActivityController *)outer$;
@end

@interface ComAdironBusmePlatformBusmeActivityController_MyMasterMessageResponseListener_$1 : NSObject < JavaLangRunnable > {
 @public
  ComAdironBusmePlatformBusmeActivityController_MyMasterMessageResponseListener *this$0_;
  id<JavaUtilMap> val$messages_;
}

@property (nonatomic, retain) ComAdironBusmePlatformBusmeActivityController_MyMasterMessageResponseListener *this$0;
@property (nonatomic, retain) id<JavaUtilMap> val$messages;

- (void)run;
- (id)initWithComAdironBusmePlatformBusmeActivityController_MyMasterMessageResponseListener:(ComAdironBusmePlatformBusmeActivityController_MyMasterMessageResponseListener *)outer$
                                                                            withJavaUtilMap:(id<JavaUtilMap>)capture$0;
@end

@interface ComAdironBusmePlatformBusmeActivityController_MyJourneysCurrentLocationResponseListener : NSObject < ComAdironBusmePlatformJourneysCurrentLocationRequestProcessor_OnJourneysCurrentLocationResponseListener > {
 @public
  ComAdironBusmePlatformBusmeActivityController *this$0_;
}

@property (nonatomic, retain) ComAdironBusmePlatformBusmeActivityController *this$0;

- (void)onJourneysCurrentLocationResponseWithJavaUtilMap:(id<JavaUtilMap>)locs;
- (id)initWithComAdironBusmePlatformBusmeActivityController:(ComAdironBusmePlatformBusmeActivityController *)outer$;
@end

@interface ComAdironBusmePlatformBusmeActivityController_$1 : ComAdironBusmePlatformRequestUpdater {
 @public
  ComAdironBusmePlatformBusmeActivityController *this$0_;
}

@property (nonatomic, retain) ComAdironBusmePlatformBusmeActivityController *this$0;

- (NSString *)getRequestUrl;
- (int)getUpdateRate;
- (id)initWithComAdironBusmePlatformBusmeActivityController:(ComAdironBusmePlatformBusmeActivityController *)outer$
                      withComAdironBusmePlatformActivityAPI:(ComAdironBusmePlatformActivityAPI *)arg$0;
@end

@interface ComAdironBusmePlatformBusmeActivityController_$2 : ComAdironBusmePlatformJourneysCurrentLocationRequestProcessor {
 @public
  ComAdironBusmePlatformBusmeActivityController *this$0_;
}

@property (nonatomic, retain) ComAdironBusmePlatformBusmeActivityController *this$0;

- (ComAdironBusmePlatformJourneyBasketController *)getJourneyBasketController;
- (id)initWithComAdironBusmePlatformBusmeActivityController:(ComAdironBusmePlatformBusmeActivityController *)outer$
          withComAdironBusmePlatformJourneyBasketController:(ComAdironBusmePlatformJourneyBasketController *)arg$0
withComAdironBusmePlatformBusmeActivityController_MyJourneysCurrentLocationResponseListener:(ComAdironBusmePlatformBusmeActivityController_MyJourneysCurrentLocationResponseListener *)arg$1;
@end

@interface ComAdironBusmePlatformBusmeActivityController_$3 : ComAdironBusmePlatformBannersRequestProcessor {
}

- (id)initWithComAdironBusmePlatformBannerBasket:(ComAdironBusmePlatformBannerBasket *)arg$0
withComAdironBusmePlatformBusmeActivityController_MyBannersResponseListener:(ComAdironBusmePlatformBusmeActivityController_MyBannersResponseListener *)arg$1;
@end

@interface ComAdironBusmePlatformBusmeActivityController_$4 : ComAdironBusmePlatformMarkersRequestProcessor {
}

- (id)initWithComAdironBusmePlatformMarkerBasket:(ComAdironBusmePlatformMarkerBasket *)arg$0
withComAdironBusmePlatformBusmeActivityController_MyMarkersResponseListener:(ComAdironBusmePlatformBusmeActivityController_MyMarkersResponseListener *)arg$1;
@end

@interface ComAdironBusmePlatformBusmeActivityController_$5 : ComAdironBusmePlatformMasterMessagesRequestProcessor {
}

- (id)initWithComAdironBusmePlatformMasterMessageBasket:(ComAdironBusmePlatformMasterMessageBasket *)arg$0
withComAdironBusmePlatformBusmeActivityController_MyMasterMessageResponseListener:(ComAdironBusmePlatformBusmeActivityController_MyMasterMessageResponseListener *)arg$1;
@end

@interface ComAdironBusmePlatformBusmeActivityController_$6 : NSObject < ComAdironBusmePlatformRequestUpdater_UpdateProgressListener > {
 @public
  ComAdironBusmePlatformBusmeActivityController *this$0_;
}

@property (nonatomic, retain) ComAdironBusmePlatformBusmeActivityController *this$0;

- (void)onUpdateStartWithJavaUtilDate:(JavaUtilDate *)time
                             withBOOL:(BOOL)forced;
- (void)onArgumentsStart;
- (void)onArgumentsFinishWithBOOL:(BOOL)makeRequest;
- (void)onRequestStartWithJavaUtilDate:(JavaUtilDate *)time;
- (void)onRequestIOErrorWithJavaIoIOException:(JavaIoIOException *)e;
- (void)onRequestFinishWithJavaUtilDate:(JavaUtilDate *)time;
- (void)onResponseStart;
- (void)onResponseFinish;
- (void)onUpdateFinishWithBOOL:(BOOL)madeRequest
              withJavaUtilDate:(JavaUtilDate *)time;
- (id)initWithComAdironBusmePlatformBusmeActivityController:(ComAdironBusmePlatformBusmeActivityController *)outer$;
@end

@interface ComAdironBusmePlatformBusmeActivityController_$6_$1 : NSObject < JavaLangRunnable > {
 @public
  ComAdironBusmePlatformBusmeActivityController_$6 *this$0_;
}

@property (nonatomic, retain) ComAdironBusmePlatformBusmeActivityController_$6 *this$0;

- (void)run;
- (id)initWithComAdironBusmePlatformBusmeActivityController_$6:(ComAdironBusmePlatformBusmeActivityController_$6 *)outer$;
@end

@interface ComAdironBusmePlatformBusmeActivityController_$6_$2 : NSObject < JavaLangRunnable > {
 @public
  ComAdironBusmePlatformBusmeActivityController_$6 *this$0_;
}

@property (nonatomic, retain) ComAdironBusmePlatformBusmeActivityController_$6 *this$0;

- (void)run;
- (id)initWithComAdironBusmePlatformBusmeActivityController_$6:(ComAdironBusmePlatformBusmeActivityController_$6 *)outer$;
@end

@interface ComAdironBusmePlatformBusmeActivityController_$7 : ComAdironBusmePlatformRequestUpdater {
 @public
  ComAdironBusmePlatformBusmeActivityController *this$0_;
}

@property (nonatomic, retain) ComAdironBusmePlatformBusmeActivityController *this$0;

- (NSString *)getRequestUrl;
- (int)getUpdateRate;
- (id)initWithComAdironBusmePlatformBusmeActivityController:(ComAdironBusmePlatformBusmeActivityController *)outer$
                      withComAdironBusmePlatformActivityAPI:(ComAdironBusmePlatformActivityAPI *)arg$0;
@end

@interface ComAdironBusmePlatformBusmeActivityController_$8 : ComAdironBusmePlatformJourneyBasketSync {
 @public
  ComAdironBusmePlatformBusmeActivityController *this$0_;
}

@property (nonatomic, retain) ComAdironBusmePlatformBusmeActivityController *this$0;

- (ComAdironBusmePlatformJourneyBasket *)getJourneyBasket;
- (NSString *)getMasterName;
- (id)initWithComAdironBusmePlatformBusmeActivityController:(ComAdironBusmePlatformBusmeActivityController *)outer$
                      withComAdironBusmePlatformActivityAPI:(ComAdironBusmePlatformActivityAPI *)arg$0;
@end

@interface ComAdironBusmePlatformBusmeActivityController_$9 : ComAdironBusmePlatformJourneysSyncRequestProcessor {
}

- (id)initWithComAdironBusmePlatformJourneyBasketSync:(ComAdironBusmePlatformJourneyBasketSync *)arg$0;
@end
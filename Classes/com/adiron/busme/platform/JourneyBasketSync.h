//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/src/main/java/com/adiron/busme/platform/JourneyBasketSync.java
//
//  Created by polar on 5/25/13.
//

@class ComAdironBusmePlatformActivityAPI;
@class ComAdironBusmePlatformJourneyBasket;
@class JavaIoIOException;
@class JavaUtilDate;
@protocol ComAdironBusmePlatformProgressLogger;
@protocol JavaUtilList;

#import "JreEmulation.h"
#import "com/adiron/busme/platform/JourneysSyncRequestProcessor.h"
#import "com/adiron/busme/platform/RequestUpdater.h"

@interface ComAdironBusmePlatformJourneyBasketSync : NSObject < ComAdironBusmePlatformJourneysSyncRequestProcessor_OnJourneysSyncResponseListener, ComAdironBusmePlatformRequestUpdater_UpdateProgressListener > {
 @public
  ComAdironBusmePlatformJourneyBasket *journeyBasket_;
  id<ComAdironBusmePlatformProgressLogger> progressLogger_;
  NSString *masterName_;
  ComAdironBusmePlatformActivityAPI *activityAPI_;
  BOOL firstRun_;
  BOOL hasBeenShown_;
}

@property (nonatomic, retain) ComAdironBusmePlatformJourneyBasket *journeyBasket;
@property (nonatomic, retain) id<ComAdironBusmePlatformProgressLogger> progressLogger;
@property (nonatomic, copy) NSString *masterName;
@property (nonatomic, retain) ComAdironBusmePlatformActivityAPI *activityAPI;
@property (nonatomic, assign) BOOL firstRun;
@property (nonatomic, assign) BOOL hasBeenShown;

+ (NSString *)LOGTAG;
- (id)initWithComAdironBusmePlatformActivityAPI:(ComAdironBusmePlatformActivityAPI *)api;
- (void)onJourneysSyncResponseWithJavaUtilList:(id<JavaUtilList>)nameids;
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
- (ComAdironBusmePlatformJourneyBasket *)getJourneyBasket;
- (void)setJourneyBasketWithComAdironBusmePlatformJourneyBasket:(ComAdironBusmePlatformJourneyBasket *)journeyBasket;
- (id<ComAdironBusmePlatformProgressLogger>)getProgressLogger;
- (void)setProgressListenerWithComAdironBusmePlatformProgressLogger:(id<ComAdironBusmePlatformProgressLogger>)logger;
- (NSString *)getMasterName;
- (void)setMasterNameWithNSString:(NSString *)masterName;
@end

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/src/main/java/com/adiron/busme/platform/MasterMessageBasket.java
//
//  Created by polar on 5/25/13.
//

@class ComAdironBusmeApiMasterMessage;
@class ComAdironBusmePlatformActivityAPI;
@class ComAdironBusmePlatformLocation;
@class ComAdironBusmePlatformMasterMessageBasket_Starter;
@class ComAdironBusmePlatformMessageStore;
@protocol JavaUtilCollection;
@protocol JavaUtilMap;

#import "JreEmulation.h"
#import "com/adiron/busme/platform/LocationListener.h"
#import "java/lang/Runnable.h"
#import "java/util/Comparator.h"

@interface ComAdironBusmePlatformMasterMessageBasket : NSObject < ComAdironBusmePlatformLocationListener > {
 @public
  ComAdironBusmePlatformActivityAPI *activityAPI_;
  id<JavaUtilMap> messages_;
  ComAdironBusmePlatformMasterMessageBasket_Starter *starter_;
  BOOL stopped_;
}

@property (nonatomic, retain) ComAdironBusmePlatformActivityAPI *activityAPI;
@property (nonatomic, retain) id<JavaUtilMap> messages;
@property (nonatomic, retain) ComAdironBusmePlatformMasterMessageBasket_Starter *starter;
@property (nonatomic, assign) BOOL stopped;

+ (NSString *)LOGTAG;
- (ComAdironBusmePlatformActivityAPI *)getActivityAPI;
- (void)setActivityAPIWithComAdironBusmePlatformActivityAPI:(ComAdironBusmePlatformActivityAPI *)activityAPI;
- (ComAdironBusmePlatformMessageStore *)getMessageStore;
- (id)initWithComAdironBusmePlatformActivityAPI:(ComAdironBusmePlatformActivityAPI *)api;
- (void)start;
- (void)stop;
- (void)onLocationChangedWithComAdironBusmePlatformLocation:(ComAdironBusmePlatformLocation *)location;
- (void)showWithComAdironBusmePlatformLocation:(ComAdironBusmePlatformLocation *)location;
- (void)addMessageWithComAdironBusmeApiMasterMessage:(ComAdironBusmeApiMasterMessage *)message;
- (void)removeMessageWithComAdironBusmeApiMasterMessage:(ComAdironBusmeApiMasterMessage *)message;
- (void)removeMessageWithNSString:(NSString *)id_;
- (ComAdironBusmeApiMasterMessage *)getMessageWithNSString:(NSString *)id_;
- (void)resetSeenMessages;
- (void)onProviderDisabledWithNSString:(NSString *)provider;
- (void)onProviderEnabledWithNSString:(NSString *)provider;
- (void)onStatusChangedWithNSString:(NSString *)provider
                            withInt:(int)status;
- (id<JavaUtilCollection>)getMessages;
- (void)force;
@end

@interface ComAdironBusmePlatformMasterMessageBasket_Starter : NSObject < JavaLangRunnable > {
 @public
  ComAdironBusmePlatformMasterMessageBasket *this$0_;
}

@property (nonatomic, retain) ComAdironBusmePlatformMasterMessageBasket *this$0;

- (void)run;
- (id)initWithComAdironBusmePlatformMasterMessageBasket:(ComAdironBusmePlatformMasterMessageBasket *)outer$;
@end

@interface ComAdironBusmePlatformMasterMessageBasket_$1 : NSObject < JavaUtilComparator > {
}

- (int)compareWithId:(ComAdironBusmeApiMasterMessage *)arg0
              withId:(ComAdironBusmeApiMasterMessage *)arg1;
- (id)init;
@end

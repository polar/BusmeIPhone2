//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/src/main/java/com/adiron/busme/platform/MasterMessageBasket.java
//
//  Created by polar on 5/25/13.
//

#import "IOSClass.h"
#import "com/adiron/busme/api/MasterMessage.h"
#import "com/adiron/busme/integration/GeoPoint.h"
#import "com/adiron/busme/platform/ActivityAPI.h"
#import "com/adiron/busme/platform/GeoCalc.h"
#import "com/adiron/busme/platform/Handler.h"
#import "com/adiron/busme/platform/Location.h"
#import "com/adiron/busme/platform/Log.h"
#import "com/adiron/busme/platform/MasterMessageBasket.h"
#import "com/adiron/busme/platform/MessageStore.h"
#import "java/lang/Boolean.h"
#import "java/lang/Double.h"
#import "java/util/ArrayList.h"
#import "java/util/Collection.h"
#import "java/util/Collections.h"
#import "java/util/Date.h"
#import "java/util/HashMap.h"
#import "java/util/Iterator.h"
#import "java/util/List.h"
#import "java/util/Map.h"

@implementation ComAdironBusmePlatformMasterMessageBasket

static NSString * ComAdironBusmePlatformMasterMessageBasket_LOGTAG_;

- (ComAdironBusmePlatformActivityAPI *)activityAPI {
  return activityAPI_;
}
- (void)setActivityAPI:(ComAdironBusmePlatformActivityAPI *)activityAPI {
  JreOperatorRetainedAssign(&activityAPI_, activityAPI);
}
@synthesize activityAPI = activityAPI_;
- (id<JavaUtilMap>)messages {
  return messages_;
}
- (void)setMessages:(id<JavaUtilMap>)messages {
  JreOperatorRetainedAssign(&messages_, messages);
}
@synthesize messages = messages_;
- (ComAdironBusmePlatformMasterMessageBasket_Starter *)starter {
  return starter_;
}
- (void)setStarter:(ComAdironBusmePlatformMasterMessageBasket_Starter *)starter {
  JreOperatorRetainedAssign(&starter_, starter);
}
@synthesize starter = starter_;
@synthesize stopped = stopped_;

+ (NSString *)LOGTAG {
  return ComAdironBusmePlatformMasterMessageBasket_LOGTAG_;
}

- (ComAdironBusmePlatformActivityAPI *)getActivityAPI {
  return activityAPI_;
}

- (void)setActivityAPIWithComAdironBusmePlatformActivityAPI:(ComAdironBusmePlatformActivityAPI *)activityAPI {
  self.activityAPI = activityAPI;
}

- (ComAdironBusmePlatformMessageStore *)getMessageStore {
  return [((ComAdironBusmePlatformActivityAPI *) NIL_CHK(activityAPI_)) getMessageStore];
}

- (id)initWithComAdironBusmePlatformActivityAPI:(ComAdironBusmePlatformActivityAPI *)api {
  if ((self = [super init])) {
    stopped_ = NO;
    self.activityAPI = api;
    JreOperatorRetainedAssign(&messages_, [[[JavaUtilHashMap alloc] init] autorelease]);
  }
  return self;
}

- (void)start {
  stopped_ = NO;
  if (starter_ == nil) {
    JreOperatorRetainedAssign(&starter_, [[[ComAdironBusmePlatformMasterMessageBasket_Starter alloc] initWithComAdironBusmePlatformMasterMessageBasket:self] autorelease]);
    [starter_ run];
  }
}

- (void)stop {
  [ComAdironBusmePlatformLog dWithNSString:ComAdironBusmePlatformMasterMessageBasket_LOGTAG_ withNSString:@"stop(): removeUpdates"];
  [((ComAdironBusmePlatformActivityAPI *) NIL_CHK(activityAPI_)) removeUpdatesWithComAdironBusmePlatformLocationListener:self];
  stopped_ = YES;
  [ComAdironBusmePlatformLog dWithNSString:ComAdironBusmePlatformMasterMessageBasket_LOGTAG_ withNSString:@"stop(): after_removeUpdates"];
}

- (void)onLocationChangedWithComAdironBusmePlatformLocation:(ComAdironBusmePlatformLocation *)location {
  [self showWithComAdironBusmePlatformLocation:location];
}

- (void)showWithComAdironBusmePlatformLocation:(ComAdironBusmePlatformLocation *)location {
  id<JavaUtilCollection> messageList = ((id<JavaUtilCollection>) [((id<JavaUtilMap>) NIL_CHK(messages_)) values]);
  id<JavaUtilList> msgs = [[[JavaUtilArrayList alloc] initWithInt:[((id<JavaUtilCollection>) NIL_CHK(messageList)) size]] autorelease];
  [((id<JavaUtilList>) NIL_CHK(msgs)) addAllWithJavaUtilCollection:messageList];
  [JavaUtilCollections sortWithJavaUtilList:msgs withJavaUtilComparator:[[[ComAdironBusmePlatformMasterMessageBasket_$1 alloc] init] autorelease]];
  [ComAdironBusmePlatformLog dWithNSString:ComAdironBusmePlatformMasterMessageBasket_LOGTAG_ withNSString:[NSString stringWithFormat:@"onLocationChanged() %d", [((id<JavaUtilCollection>) NIL_CHK(messageList)) size]]];
  ComAdironBusmeIntegrationGeoPoint *point = nil;
  if (location != nil) {
    point = [ComAdironBusmePlatformGeoCalc toGeoPointWithComAdironBusmePlatformLocation:location];
  }
  {
    id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [((id<JavaUtilList>) NIL_CHK(msgs)) iterator]);
    while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
      ComAdironBusmeApiMasterMessage *message = ((ComAdironBusmeApiMasterMessage *) [((id<JavaUtilIterator>) NIL_CHK(iter__)) next]);
      if (point != nil && [((ComAdironBusmeApiMasterMessage *) NIL_CHK(message)) isLoaded] && [((ComAdironBusmeApiMasterMessage *) NIL_CHK(message)) getPoint] != nil && [((ComAdironBusmeApiMasterMessage *) NIL_CHK(message)) getRadius] > 0) {
        int dist = [((ComAdironBusmeIntegrationGeoPoint *) NIL_CHK(point)) distanceToWithOrgOsmdroidApiIGeoPoint:[((ComAdironBusmeApiMasterMessage *) NIL_CHK(message)) getPoint]];
        [ComAdironBusmePlatformLog dWithNSString:ComAdironBusmePlatformMasterMessageBasket_LOGTAG_ withNSString:[NSString stringWithFormat:@"onLocationChanged: message %@ dist %d radius %qi seen %@ expires %@", [((ComAdironBusmeApiMasterMessage *) NIL_CHK(message)) getTitle], dist, [((ComAdironBusmeApiMasterMessage *) NIL_CHK(message)) getRadius], [JavaLangBoolean toStringWithBOOL:[((ComAdironBusmeApiMasterMessage *) NIL_CHK(message)) isSeen]], [((ComAdironBusmeApiMasterMessage *) NIL_CHK(message)) getExpiryTime]]];
        if (dist < [((ComAdironBusmeApiMasterMessage *) NIL_CHK(message)) getRadius]) {
          if ([[self getMessageStore] shouldBeShownWithComAdironBusmeApiMasterMessage:message withJavaUtilDate:[[[JavaUtilDate alloc] init] autorelease]]) {
            if (![[self getActivityAPI] UIisMessagePopupShowing]) {
              [[self getActivityAPI] UIShowMessagePopupWithComAdironBusmeApiMasterMessage:message];
              return;
            }
          }
        }
        else {
        }
      }
      else {
        [ComAdironBusmePlatformLog dWithNSString:ComAdironBusmePlatformMasterMessageBasket_LOGTAG_ withNSString:[NSString stringWithFormat:@"onLocationChanged: message %@ radius %qi seen %@ expires %@", [((ComAdironBusmeApiMasterMessage *) NIL_CHK(message)) getTitle], [((ComAdironBusmeApiMasterMessage *) NIL_CHK(message)) getRadius], [JavaLangBoolean toStringWithBOOL:[((ComAdironBusmeApiMasterMessage *) NIL_CHK(message)) isSeen]], [((ComAdironBusmeApiMasterMessage *) NIL_CHK(message)) getExpiryTime]]];
        if ([((ComAdironBusmeApiMasterMessage *) NIL_CHK(message)) isLoaded] && ([((ComAdironBusmeApiMasterMessage *) NIL_CHK(message)) getPoint] == nil || [((ComAdironBusmeApiMasterMessage *) NIL_CHK(message)) getRadius] <= 0) && [[self getMessageStore] shouldBeShownWithComAdironBusmeApiMasterMessage:message withJavaUtilDate:[[[JavaUtilDate alloc] init] autorelease]]) {
          if (![[self getActivityAPI] UIisMessagePopupShowing]) {
            [[self getActivityAPI] UIShowMessagePopupWithComAdironBusmeApiMasterMessage:message];
            return;
          }
        }
      }
    }
  }
}

- (void)addMessageWithComAdironBusmeApiMasterMessage:(ComAdironBusmeApiMasterMessage *)message {
  [ComAdironBusmePlatformLog dWithNSString:ComAdironBusmePlatformMasterMessageBasket_LOGTAG_ withNSString:[NSString stringWithFormat:@"addMessage: message %@ radius %qi seen %@ expires %@", [((ComAdironBusmeApiMasterMessage *) NIL_CHK(message)) getTitle], [((ComAdironBusmeApiMasterMessage *) NIL_CHK(message)) getRadius], [JavaLangBoolean toStringWithBOOL:[((ComAdironBusmeApiMasterMessage *) NIL_CHK(message)) isSeen]], [((ComAdironBusmeApiMasterMessage *) NIL_CHK(message)) getExpiryTime]]];
  if ([[self getMessageStore] shouldBeShownWithComAdironBusmeApiMasterMessage:message withJavaUtilDate:[[[JavaUtilDate alloc] init] autorelease]]) {
    [ComAdironBusmePlatformLog dWithNSString:ComAdironBusmePlatformMasterMessageBasket_LOGTAG_ withNSString:[NSString stringWithFormat:@"addMessage: added! %@ %qi", [((ComAdironBusmeApiMasterMessage *) NIL_CHK(message)) getTitle], [((ComAdironBusmeApiMasterMessage *) NIL_CHK(message)) getVersion]]];
    [((id<JavaUtilMap>) NIL_CHK(messages_)) putWithId:[((ComAdironBusmeApiMasterMessage *) NIL_CHK(message)) getId] withId:message];
  }
  else {
    [ComAdironBusmePlatformLog eWithNSString:ComAdironBusmePlatformMasterMessageBasket_LOGTAG_ withNSString:[NSString stringWithFormat:@"addMessage: NOT ADDED: %@ %qi", [((ComAdironBusmeApiMasterMessage *) NIL_CHK(message)) getTitle], [((ComAdironBusmeApiMasterMessage *) NIL_CHK(message)) getVersion]]];
  }
}

- (void)removeMessageWithComAdironBusmeApiMasterMessage:(ComAdironBusmeApiMasterMessage *)message {
  [ComAdironBusmePlatformLog dWithNSString:ComAdironBusmePlatformMasterMessageBasket_LOGTAG_ withNSString:[NSString stringWithFormat:@"removeMessage: message %@ radius %qi seen %@ expires %@", [((ComAdironBusmeApiMasterMessage *) NIL_CHK(message)) getTitle], [((ComAdironBusmeApiMasterMessage *) NIL_CHK(message)) getRadius], [JavaLangBoolean toStringWithBOOL:[((ComAdironBusmeApiMasterMessage *) NIL_CHK(message)) isSeen]], [((ComAdironBusmeApiMasterMessage *) NIL_CHK(message)) getExpiryTime]]];
  if (message != nil) {
    [((id<JavaUtilMap>) NIL_CHK(messages_)) removeWithId:[message getId]];
    [[self getMessageStore] removeMessageWithNSString:[message getId]];
  }
}

- (void)removeMessageWithNSString:(NSString *)id_ {
  ComAdironBusmeApiMasterMessage *message = ((ComAdironBusmeApiMasterMessage *) [((id<JavaUtilMap>) NIL_CHK(messages_)) getWithId:id_]);
  if (message != nil) {
    [ComAdironBusmePlatformLog dWithNSString:ComAdironBusmePlatformMasterMessageBasket_LOGTAG_ withNSString:[NSString stringWithFormat:@"removeMessage: message %@ radius %qi seen %@ expires %@", [message getTitle], [message getRadius], [JavaLangBoolean toStringWithBOOL:[message isSeen]], [message getExpiryTime]]];
  }
  else {
    [ComAdironBusmePlatformLog dWithNSString:ComAdironBusmePlatformMasterMessageBasket_LOGTAG_ withNSString:[NSString stringWithFormat:@"removeMessage: id %@", id_]];
  }
  [((id<JavaUtilMap>) NIL_CHK(messages_)) removeWithId:id_];
  [[self getMessageStore] removeMessageWithNSString:id_];
}

- (ComAdironBusmeApiMasterMessage *)getMessageWithNSString:(NSString *)id_ {
  return ((ComAdironBusmeApiMasterMessage *) [((id<JavaUtilMap>) NIL_CHK(messages_)) getWithId:id_]);
}

- (void)resetSeenMessages {
  {
    id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [((id<JavaUtilCollection>) [((id<JavaUtilMap>) NIL_CHK(messages_)) values]) iterator]);
    while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
      ComAdironBusmeApiMasterMessage *message = ((ComAdironBusmeApiMasterMessage *) [((id<JavaUtilIterator>) NIL_CHK(iter__)) next]);
      [((ComAdironBusmeApiMasterMessage *) NIL_CHK(message)) setSeenWithBOOL:NO];
    }
  }
  id<JavaUtilList> seenMessages = [[self getMessageStore] getSeenMessages];
  {
    id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [((id<JavaUtilList>) NIL_CHK(seenMessages)) iterator]);
    while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
      NSString *id_ = ((NSString *) [((id<JavaUtilIterator>) NIL_CHK(iter__)) next]);
      [self addMessageWithComAdironBusmeApiMasterMessage:[[[ComAdironBusmeApiMasterMessage alloc] initWithNSString:id_] autorelease]];
    }
  }
  [[self getMessageStore] reset];
}

- (void)onProviderDisabledWithNSString:(NSString *)provider {
}

- (void)onProviderEnabledWithNSString:(NSString *)provider {
}

- (void)onStatusChangedWithNSString:(NSString *)provider
                            withInt:(int)status {
}

- (id<JavaUtilCollection>)getMessages {
  return ((id<JavaUtilCollection>) [((id<JavaUtilMap>) NIL_CHK(messages_)) values]);
}

- (void)force {
  [self showWithComAdironBusmePlatformLocation:[((ComAdironBusmePlatformActivityAPI *) NIL_CHK(activityAPI_)) getLastFix]];
}

+ (void)initialize {
  if (self == [ComAdironBusmePlatformMasterMessageBasket class]) {
    JreOperatorRetainedAssign(&ComAdironBusmePlatformMasterMessageBasket_LOGTAG_, [[IOSClass classWithClass:[ComAdironBusmePlatformMasterMessageBasket class]] getName]);
  }
}

- (void)dealloc {
  JreOperatorRetainedAssign(&starter_, nil);
  JreOperatorRetainedAssign(&messages_, nil);
  JreOperatorRetainedAssign(&activityAPI_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ComAdironBusmePlatformMasterMessageBasket *typedCopy = (ComAdironBusmePlatformMasterMessageBasket *) copy;
  typedCopy.activityAPI = activityAPI_;
  typedCopy.messages = messages_;
  typedCopy.starter = starter_;
  typedCopy.stopped = stopped_;
}

@end
@implementation ComAdironBusmePlatformMasterMessageBasket_Starter

- (ComAdironBusmePlatformMasterMessageBasket *)this$0 {
  return this$0_;
}
- (void)setThis$0:(ComAdironBusmePlatformMasterMessageBasket *)this$0 {
  JreOperatorRetainedAssign(&this$0_, this$0);
}
@synthesize this$0 = this$0_;

- (void)run {
  if ([((ComAdironBusmePlatformActivityAPI *) NIL_CHK(this$0_.activityAPI)) isReady]) {
    if (!this$0_.stopped) {
      [ComAdironBusmePlatformLog dWithNSString:[ComAdironBusmePlatformMasterMessageBasket LOGTAG] withNSString:@"starting LocationUpdates"];
      [((ComAdironBusmePlatformActivityAPI *) NIL_CHK(this$0_.activityAPI)) requestLocationUpdatesWithInt:[((ComAdironBusmePlatformActivityAPI *) NIL_CHK(this$0_.activityAPI)) getPostlocTimeRate] withInt:[((ComAdironBusmePlatformActivityAPI *) NIL_CHK(this$0_.activityAPI)) getPostlocDistRate] withComAdironBusmePlatformLocationListener:this$0_];
    }
    this$0_.starter = nil;
  }
  else {
    [ComAdironBusmePlatformLog dWithNSString:[ComAdironBusmePlatformMasterMessageBasket LOGTAG] withNSString:@"Delaying marker updates until api is ready."];
    ComAdironBusmePlatformHandler *handler = [((ComAdironBusmePlatformActivityAPI *) NIL_CHK(this$0_.activityAPI)) getUIHandler];
    if (handler != nil) {
      [handler postDelayedWithJavaLangRunnable:self withLongInt:10000];
    }
  }
}

- (id)initWithComAdironBusmePlatformMasterMessageBasket:(ComAdironBusmePlatformMasterMessageBasket *)outer$ {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&this$0_, outer$);
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&this$0_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ComAdironBusmePlatformMasterMessageBasket_Starter *typedCopy = (ComAdironBusmePlatformMasterMessageBasket_Starter *) copy;
  typedCopy.this$0 = this$0_;
}

@end
@implementation ComAdironBusmePlatformMasterMessageBasket_$1

- (int)compareWithId:(ComAdironBusmeApiMasterMessage *)arg0
              withId:(ComAdironBusmeApiMasterMessage *)arg1 {
  return [JavaLangDouble compareWithDouble:[((ComAdironBusmeApiMasterMessage *) NIL_CHK(arg1)) getPriority] withDouble:[((ComAdironBusmeApiMasterMessage *) NIL_CHK(arg0)) getPriority]];
}

- (id)init {
  return [super init];
}

- (void)dealloc {
  [super dealloc];
}

@end

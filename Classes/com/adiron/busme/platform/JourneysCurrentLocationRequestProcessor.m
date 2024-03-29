//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/src/main/java/com/adiron/busme/platform/JourneysCurrentLocationRequestProcessor.java
//
//  Created by polar on 5/25/13.
//

#import "IOSClass.h"
#import "IOSObjectArray.h"
#import "com/adiron/busme/api/APIBase.h"
#import "com/adiron/busme/api/JourneyLocation.h"
#import "com/adiron/busme/api/Route.h"
#import "com/adiron/busme/integration/http/NameValuePair.h"
#import "com/adiron/busme/integration/http/message/BasicNameValuePair.h"
#import "com/adiron/busme/platform/ActivityAPI.h"
#import "com/adiron/busme/platform/JourneyBasketController.h"
#import "com/adiron/busme/platform/JourneyDisplay.h"
#import "com/adiron/busme/platform/JourneysCurrentLocationRequestProcessor.h"
#import "com/adiron/busme/platform/Log.h"
#import "java/lang/Boolean.h"
#import "java/lang/Double.h"
#import "java/lang/Exception.h"
#import "java/lang/Integer.h"
#import "java/lang/Long.h"
#import "java/util/ArrayList.h"
#import "java/util/HashMap.h"
#import "java/util/Iterator.h"
#import "java/util/List.h"
#import "java/util/Map.h"

@implementation ComAdironBusmePlatformJourneysCurrentLocationRequestProcessor

static NSString * ComAdironBusmePlatformJourneysCurrentLocationRequestProcessor_LOGTAG_;

- (ComAdironBusmePlatformJourneyBasketController *)journeyBasketController {
  return journeyBasketController_;
}
- (void)setJourneyBasketController:(ComAdironBusmePlatformJourneyBasketController *)journeyBasketController {
  JreOperatorRetainedAssign(&journeyBasketController_, journeyBasketController);
}
@synthesize journeyBasketController = journeyBasketController_;
- (ComAdironBusmePlatformActivityAPI *)activityAPI {
  return activityAPI_;
}
- (void)setActivityAPI:(ComAdironBusmePlatformActivityAPI *)activityAPI {
  JreOperatorRetainedAssign(&activityAPI_, activityAPI);
}
@synthesize activityAPI = activityAPI_;
- (id<ComAdironBusmePlatformJourneysCurrentLocationRequestProcessor_LocationUpdateListener>)locationUpdateListener {
  return locationUpdateListener_;
}
- (void)setLocationUpdateListener:(id<ComAdironBusmePlatformJourneysCurrentLocationRequestProcessor_LocationUpdateListener>)locationUpdateListener {
  JreOperatorRetainedAssign(&locationUpdateListener_, locationUpdateListener);
}
@synthesize locationUpdateListener = locationUpdateListener_;
- (id<ComAdironBusmePlatformJourneysCurrentLocationRequestProcessor_OnJourneysCurrentLocationResponseListener>)onJourneysCurrentLocationResponseListener {
  return onJourneysCurrentLocationResponseListener_;
}
- (void)setOnJourneysCurrentLocationResponseListener:(id<ComAdironBusmePlatformJourneysCurrentLocationRequestProcessor_OnJourneysCurrentLocationResponseListener>)onJourneysCurrentLocationResponseListener {
  JreOperatorRetainedAssign(&onJourneysCurrentLocationResponseListener_, onJourneysCurrentLocationResponseListener);
}
@synthesize onJourneysCurrentLocationResponseListener = onJourneysCurrentLocationResponseListener_;

+ (NSString *)LOGTAG {
  return ComAdironBusmePlatformJourneysCurrentLocationRequestProcessor_LOGTAG_;
}

- (void)setJourneyLocationUpdateListenerWithComAdironBusmePlatformJourneysCurrentLocationRequestProcessor_LocationUpdateListener:(id<ComAdironBusmePlatformJourneysCurrentLocationRequestProcessor_LocationUpdateListener>)lis {
  JreOperatorRetainedAssign(&locationUpdateListener_, lis);
}

- (id)initWithComAdironBusmePlatformJourneyBasketController:(ComAdironBusmePlatformJourneyBasketController *)journeyBasketController
withComAdironBusmePlatformJourneysCurrentLocationRequestProcessor_OnJourneysCurrentLocationResponseListener:(id<ComAdironBusmePlatformJourneysCurrentLocationRequestProcessor_OnJourneysCurrentLocationResponseListener>)onJourneysCurrentLocationResponseListener {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&locationUpdateListener_, nil);
    [self setJourneyBasketControllerWithComAdironBusmePlatformJourneyBasketController:journeyBasketController];
    [self setOnJourneysCurrentLocationResponseListenerWithComAdironBusmePlatformJourneysCurrentLocationRequestProcessor_OnJourneysCurrentLocationResponseListener:onJourneysCurrentLocationResponseListener];
  }
  return self;
}

- (ComAdironBusmePlatformJourneyBasketController *)getJourneyBasketController {
  return journeyBasketController_;
}

- (void)setJourneyBasketControllerWithComAdironBusmePlatformJourneyBasketController:(ComAdironBusmePlatformJourneyBasketController *)journeyBasketController {
  self.journeyBasketController = journeyBasketController;
}

- (id<ComAdironBusmePlatformJourneysCurrentLocationRequestProcessor_OnJourneysCurrentLocationResponseListener>)getOnJourneysCurrentLocationResponseListener {
  return onJourneysCurrentLocationResponseListener_;
}

- (void)setOnJourneysCurrentLocationResponseListenerWithComAdironBusmePlatformJourneysCurrentLocationRequestProcessor_OnJourneysCurrentLocationResponseListener:(id<ComAdironBusmePlatformJourneysCurrentLocationRequestProcessor_OnJourneysCurrentLocationResponseListener>)onJourneysCurrentLocationResponseListener {
  self.onJourneysCurrentLocationResponseListener = onJourneysCurrentLocationResponseListener;
}

- (id<JavaUtilMap>)extractJourneyLocationsWithComAdironBusmeApiAPIBase_Tag:(ComAdironBusmeApiAPIBase_Tag *)response {
  id<JavaUtilMap> locs = [[[JavaUtilHashMap alloc] init] autorelease];
  if (response != nil && ((ComAdironBusmeApiAPIBase_Tag *) NIL_CHK(response)).childNodes != nil) {
    {
      id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [((id<JavaUtilList>) NIL_CHK(response.childNodes)) iterator]);
      while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
        ComAdironBusmeApiAPIBase_Tag *tag = ((ComAdironBusmeApiAPIBase_Tag *) [((id<JavaUtilIterator>) NIL_CHK(iter__)) next]);
        if ([@"JPS" isEqual:((ComAdironBusmeApiAPIBase_Tag *) NIL_CHK(tag)).name]) {
          {
            id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [((id<JavaUtilList>) NIL_CHK(tag.childNodes)) iterator]);
            while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
              ComAdironBusmeApiAPIBase_Tag *n = ((ComAdironBusmeApiAPIBase_Tag *) [((id<JavaUtilIterator>) NIL_CHK(iter__)) next]);
              if ([NIL_CHK(n.name) isEqual:@"JP"]) {
                @try {
                  ComAdironBusmeApiJourneyLocation *loc = [[[ComAdironBusmeApiJourneyLocation alloc] init] autorelease];
                  ((ComAdironBusmeApiJourneyLocation *) NIL_CHK(loc)).lat = (int) ([JavaLangDouble parseDoubleWithNSString:((NSString *) [((id<JavaUtilMap>) NIL_CHK(n.attributes)) getWithId:@"lat"])] * 1E6);
                  ((ComAdironBusmeApiJourneyLocation *) NIL_CHK(loc)).lon = (int) ([JavaLangDouble parseDoubleWithNSString:((NSString *) [((id<JavaUtilMap>) NIL_CHK(n.attributes)) getWithId:@"lon"])] * 1E6);
                  ((ComAdironBusmeApiJourneyLocation *) NIL_CHK(loc)).dir = (float) ([JavaLangDouble parseDoubleWithNSString:((NSString *) [((id<JavaUtilMap>) NIL_CHK(n.attributes)) getWithId:@"direction"])]);
                  ((ComAdironBusmeApiJourneyLocation *) NIL_CHK(loc)).reported = [JavaLangBoolean parseBooleanWithNSString:((NSString *) [((id<JavaUtilMap>) NIL_CHK(n.attributes)) getWithId:@"reported"])];
                  ((ComAdironBusmeApiJourneyLocation *) NIL_CHK(loc)).reported_time = 1000 * [JavaLangLong parseLongWithNSString:((NSString *) [((id<JavaUtilMap>) NIL_CHK(n.attributes)) getWithId:@"reported_time"])];
                  ((ComAdironBusmeApiJourneyLocation *) NIL_CHK(loc)).recorded_time = 1000 * [JavaLangLong parseLongWithNSString:((NSString *) [((id<JavaUtilMap>) NIL_CHK(n.attributes)) getWithId:@"recorded_time"])];
                  ((ComAdironBusmeApiJourneyLocation *) NIL_CHK(loc)).timediff = (int) ([JavaLangInteger parseIntWithNSString:((NSString *) [((id<JavaUtilMap>) NIL_CHK(n.attributes)) getWithId:@"timediff"])]);
                  ((ComAdironBusmeApiJourneyLocation *) NIL_CHK(loc)).distance = [JavaLangDouble parseDoubleWithNSString:((NSString *) [((id<JavaUtilMap>) NIL_CHK(n.attributes)) getWithId:@"distance"])];
                  ((ComAdironBusmeApiJourneyLocation *) NIL_CHK(loc)).onroute = (BOOL) [JavaLangBoolean parseBooleanWithNSString:((NSString *) [((id<JavaUtilMap>) NIL_CHK(n.attributes)) getWithId:@"onroute"])];
                  [((id<JavaUtilMap>) NIL_CHK(locs)) putWithId:((NSString *) [((id<JavaUtilMap>) NIL_CHK(n.attributes)) getWithId:@"id"]) withId:loc];
                }
                @catch (JavaLangException *e) {
                  [ComAdironBusmePlatformLog eWithNSString:ComAdironBusmePlatformJourneysCurrentLocationRequestProcessor_LOGTAG_ withNSString:[NSString stringWithFormat:@"Bad parsing of JP tag: %@" , e, nil]];
                }
              }
            }
          }
        }
      }
    }
  }
  return locs;
}

- (void)processResponseWithComAdironBusmeApiAPIBase_Tag:(ComAdironBusmeApiAPIBase_Tag *)response {
  id<JavaUtilMap> locs = [self extractJourneyLocationsWithComAdironBusmeApiAPIBase_Tag:response];
  id<ComAdironBusmePlatformJourneysCurrentLocationRequestProcessor_OnJourneysCurrentLocationResponseListener> lis = [self getOnJourneysCurrentLocationResponseListener];
  if (lis != nil) {
    [lis onJourneysCurrentLocationResponseWithJavaUtilMap:locs];
  }
}

- (id<JavaUtilList>)getArguments {
  ComAdironBusmePlatformJourneyBasketController *controller = [self getJourneyBasketController];
  if (controller != nil) {
    id<JavaUtilList> displays = [controller getJourneyDisplays];
    id<JavaUtilList> journeys = [[[JavaUtilArrayList alloc] initWithInt:[((id<JavaUtilList>) NIL_CHK(displays)) size]] autorelease];
    [ComAdironBusmePlatformLog dWithNSString:ComAdironBusmePlatformJourneysCurrentLocationRequestProcessor_LOGTAG_ withNSString:[NSString stringWithFormat:@"run : we have  JourneyDisplays num %d", [((id<JavaUtilList>) NIL_CHK(displays)) size]]];
    {
      id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [((id<JavaUtilList>) NIL_CHK(displays)) iterator]);
      while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
        ComAdironBusmePlatformJourneyDisplay *jd = ((ComAdironBusmePlatformJourneyDisplay *) [((id<JavaUtilIterator>) NIL_CHK(iter__)) next]);
        if ([[((ComAdironBusmePlatformJourneyDisplay *) NIL_CHK(jd)) getRoute] isJourney] && [((ComAdironBusmePlatformJourneyDisplay *) NIL_CHK(jd)) isPathVisible]) {
          [((id<JavaUtilList>) NIL_CHK(journeys)) addWithId:[((ComAdironBusmePlatformJourneyDisplay *) NIL_CHK(jd)) getRoute]];
        }
      }
    }
    id<JavaUtilList> params = [[[JavaUtilArrayList alloc] initWithInt:[((id<JavaUtilList>) NIL_CHK(journeys)) size]] autorelease];
    {
      id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [((id<JavaUtilList>) NIL_CHK(journeys)) iterator]);
      while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
        ComAdironBusmeApiRoute *j = ((ComAdironBusmeApiRoute *) [((id<JavaUtilIterator>) NIL_CHK(iter__)) next]);
        [((id<JavaUtilList>) NIL_CHK(params)) addWithId:[[[ComAdironBusmeIntegrationHttpMessageBasicNameValuePair alloc] initWithNSString:@"journey_ids[]" withNSString:((ComAdironBusmeApiRoute *) NIL_CHK(j)).id_] autorelease]];
      }
    }
    return params;
  }
  else {
    return nil;
  }
}

+ (void)initialize {
  if (self == [ComAdironBusmePlatformJourneysCurrentLocationRequestProcessor class]) {
    JreOperatorRetainedAssign(&ComAdironBusmePlatformJourneysCurrentLocationRequestProcessor_LOGTAG_, [[IOSClass classWithClass:[ComAdironBusmePlatformJourneysCurrentLocationRequestProcessor class]] getName]);
  }
}

- (void)dealloc {
  JreOperatorRetainedAssign(&onJourneysCurrentLocationResponseListener_, nil);
  JreOperatorRetainedAssign(&locationUpdateListener_, nil);
  JreOperatorRetainedAssign(&activityAPI_, nil);
  JreOperatorRetainedAssign(&journeyBasketController_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ComAdironBusmePlatformJourneysCurrentLocationRequestProcessor *typedCopy = (ComAdironBusmePlatformJourneysCurrentLocationRequestProcessor *) copy;
  typedCopy.journeyBasketController = journeyBasketController_;
  typedCopy.activityAPI = activityAPI_;
  typedCopy.locationUpdateListener = locationUpdateListener_;
  typedCopy.onJourneysCurrentLocationResponseListener = onJourneysCurrentLocationResponseListener_;
}

@end

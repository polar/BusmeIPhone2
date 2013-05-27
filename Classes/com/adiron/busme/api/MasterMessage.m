//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/src/main/java/com/adiron/busme/api/MasterMessage.java
//
//  Created by polar on 5/25/13.
//

#import "com/adiron/busme/api/APIBase.h"
#import "com/adiron/busme/api/MasterMessage.h"
#import "com/adiron/busme/integration/GeoPoint.h"
#import "java/lang/Double.h"
#import "java/lang/Exception.h"
#import "java/lang/Long.h"
#import "java/util/Date.h"
#import "java/util/Iterator.h"
#import "java/util/List.h"
#import "java/util/Map.h"

@implementation ComAdironBusmeApiMasterMessage

- (NSString *)id_ {
  return id__;
}
- (void)setId_:(NSString *)id_ {
  JreOperatorRetainedAssign(&id__, id_);
}
@synthesize id_ = id__;
- (NSString *)title {
  return title_;
}
- (void)setTitle:(NSString *)title {
  JreOperatorRetainedAssign(&title_, title);
}
@synthesize title = title_;
@synthesize priority = priority_;
@synthesize seen = seen_;
- (NSString *)content {
  return content_;
}
- (void)setContent:(NSString *)content {
  JreOperatorRetainedAssign(&content_, content);
}
@synthesize content = content_;
- (NSString *)goUrl {
  return goUrl_;
}
- (void)setGoUrl:(NSString *)goUrl {
  JreOperatorRetainedAssign(&goUrl_, goUrl);
}
@synthesize goUrl = goUrl_;
- (NSString *)goLabel {
  return goLabel_;
}
- (void)setGoLabel:(NSString *)goLabel {
  JreOperatorRetainedAssign(&goLabel_, goLabel);
}
@synthesize goLabel = goLabel_;
@synthesize remindPeriod = remindPeriod_;
- (JavaUtilDate *)expiryTime {
  return expiryTime_;
}
- (void)setExpiryTime:(JavaUtilDate *)expiryTime {
  JreOperatorRetainedAssign(&expiryTime_, expiryTime);
}
@synthesize expiryTime = expiryTime_;
- (ComAdironBusmeIntegrationGeoPoint *)point {
  return point_;
}
- (void)setPoint:(ComAdironBusmeIntegrationGeoPoint *)point {
  JreOperatorRetainedAssign(&point_, point);
}
@synthesize point = point_;
@synthesize radius = radius_;
@synthesize version_ = version__;
@synthesize displayed = displayed_;
@synthesize loaded = loaded_;
- (JavaUtilDate *)remindTime {
  return remindTime_;
}
- (void)setRemindTime:(JavaUtilDate *)remindTime {
  JreOperatorRetainedAssign(&remindTime_, remindTime);
}
@synthesize remindTime = remindTime_;
@synthesize remindable = remindable_;

- (id)initWithNSString:(NSString *)id_ {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&id__, @"");
    JreOperatorRetainedAssign(&title_, @"No Title");
    priority_ = 0;
    seen_ = NO;
    JreOperatorRetainedAssign(&content_, @"No Content");
    remindPeriod_ = 1000 * 60 * 60 * 24 * 7;
    JreOperatorRetainedAssign(&expiryTime_, [[[JavaUtilDate alloc] initWithLongInt:[((JavaUtilDate *) [[[JavaUtilDate alloc] init] autorelease]) getTime] + 1000 * 60 * 60 * 24] autorelease]);
    JreOperatorRetainedAssign(&point_, nil);
    radius_ = 0;
    version__ = 0;
    loaded_ = NO;
    JreOperatorRetainedAssign(&remindTime_, nil);
    self.id_ = id_;
    self.loaded = NO;
    self.seen = NO;
  }
  return self;
}

- (BOOL)isLoaded {
  return loaded_;
}

- (BOOL)isDisplayed {
  return displayed_;
}

- (void)setDisplayedWithBOOL:(BOOL)displayed {
  self.displayed = displayed;
}

- (double)getPriority {
  return priority_;
}

- (void)setPriorityWithDouble:(double)priority {
  self.priority = priority;
}

- (BOOL)isSeen {
  return seen_;
}

- (BOOL)isRemindable {
  return remindable_;
}

- (void)setRemindableWithBOOL:(BOOL)remindable {
  self.remindable = remindable;
}

- (void)setSeenWithBOOL:(BOOL)seen {
  self.seen = seen;
}

- (JavaUtilDate *)getExpiryTime {
  return expiryTime_;
}

- (void)setExpiryTimeWithJavaUtilDate:(JavaUtilDate *)expiryTime {
  self.expiryTime = expiryTime;
}

- (id)init {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&id__, @"");
    JreOperatorRetainedAssign(&title_, @"No Title");
    priority_ = 0;
    seen_ = NO;
    JreOperatorRetainedAssign(&content_, @"No Content");
    remindPeriod_ = 1000 * 60 * 60 * 24 * 7;
    JreOperatorRetainedAssign(&expiryTime_, [[[JavaUtilDate alloc] initWithLongInt:[((JavaUtilDate *) [[[JavaUtilDate alloc] init] autorelease]) getTime] + 1000 * 60 * 60 * 24] autorelease]);
    JreOperatorRetainedAssign(&point_, nil);
    radius_ = 0;
    version__ = 0;
    loaded_ = NO;
    JreOperatorRetainedAssign(&remindTime_, nil);
  }
  return self;
}

- (NSString *)getId {
  return id__;
}

- (void)setIdWithNSString:(NSString *)id_ {
  self.id_ = id_;
}

- (NSString *)getTitle {
  return title_;
}

- (void)setTitleWithNSString:(NSString *)title {
  self.title = title;
}

- (NSString *)getContent {
  return content_;
}

- (void)setContentWithNSString:(NSString *)message {
  self.content = message;
}

- (NSString *)getGoUrl {
  return goUrl_;
}

- (void)setGoUrlWithNSString:(NSString *)goUrl {
  self.goUrl = goUrl;
}

- (NSString *)getGoLabel {
  return goLabel_;
}

- (void)setGoLabelWithNSString:(NSString *)goLabel {
  self.goLabel = goLabel;
}

- (void)setRemindTimeWithJavaUtilDate:(JavaUtilDate *)time
                          withLongInt:(long long int)forward {
  JreOperatorRetainedAssign(&remindTime_, [[[JavaUtilDate alloc] initWithLongInt:[((JavaUtilDate *) NIL_CHK(time)) getTime] + forward] autorelease]);
}

- (void)resetRemindTimeWithJavaUtilDate:(JavaUtilDate *)time {
  [self setRemindTimeWithJavaUtilDate:[[[JavaUtilDate alloc] initWithLongInt:[((JavaUtilDate *) NIL_CHK(time)) getTime] + 1000 * remindPeriod_] autorelease]];
}

- (ComAdironBusmeApiMasterMessage *)loadParsedXMLWithComAdironBusmeApiAPIBase_Tag:(ComAdironBusmeApiAPIBase_Tag *)tag {
  JreOperatorRetainedAssign(&id__, ((NSString *) [((id<JavaUtilMap>) NIL_CHK(tag.attributes)) getWithId:@"id"]));
  JreOperatorRetainedAssign(&goUrl_, ((NSString *) [((id<JavaUtilMap>) NIL_CHK(tag.attributes)) getWithId:@"goUrl"]));
  remindable_ = [@"true" isEqual:((NSString *) [((id<JavaUtilMap>) NIL_CHK(tag.attributes)) getWithId:@"remindable"])];
  {
    id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [((id<JavaUtilList>) NIL_CHK(tag.childNodes)) iterator]);
    while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
      ComAdironBusmeApiAPIBase_Tag *m = ((ComAdironBusmeApiAPIBase_Tag *) [((id<JavaUtilIterator>) NIL_CHK(iter__)) next]);
      if ([@"Title" isEqual:((ComAdironBusmeApiAPIBase_Tag *) NIL_CHK(m)).name]) {
        JreOperatorRetainedAssign(&title_, ((ComAdironBusmeApiAPIBase_Tag *) NIL_CHK(m)).text);
      }
      else if ([@"Content" isEqual:((ComAdironBusmeApiAPIBase_Tag *) NIL_CHK(m)).name]) {
        JreOperatorRetainedAssign(&content_, ((ComAdironBusmeApiAPIBase_Tag *) NIL_CHK(m)).text);
      }
      else if ([@"GoLabel" isEqual:((ComAdironBusmeApiAPIBase_Tag *) NIL_CHK(m)).name]) {
        JreOperatorRetainedAssign(&goLabel_, ((ComAdironBusmeApiAPIBase_Tag *) NIL_CHK(m)).text);
      }
    }
  }
  @try {
    long long int time = [JavaLangLong parseLongWithNSString:((NSString *) [((id<JavaUtilMap>) NIL_CHK(tag.attributes)) getWithId:@"expiryTime"])];
    JreOperatorRetainedAssign(&expiryTime_, [[[JavaUtilDate alloc] initWithLongInt:time] autorelease]);
  }
  @catch (JavaLangException *e) {
  }
  @try {
    priority_ = [JavaLangDouble parseDoubleWithNSString:((NSString *) [((id<JavaUtilMap>) NIL_CHK(tag.attributes)) getWithId:@"priority"])];
  }
  @catch (JavaLangException *e) {
  }
  @try {
    remindPeriod_ = [JavaLangLong parseLongWithNSString:((NSString *) [((id<JavaUtilMap>) NIL_CHK(tag.attributes)) getWithId:@"remindPeriod"])];
  }
  @catch (JavaLangException *e) {
  }
  @try {
    version__ = [JavaLangLong parseLongWithNSString:((NSString *) [((id<JavaUtilMap>) NIL_CHK(tag.attributes)) getWithId:@"version"])];
  }
  @catch (JavaLangException *e) {
  }
  @try {
    double lon = [JavaLangDouble parseDoubleWithNSString:((NSString *) [((id<JavaUtilMap>) NIL_CHK(tag.attributes)) getWithId:@"lon"])];
    double lat = [JavaLangDouble parseDoubleWithNSString:((NSString *) [((id<JavaUtilMap>) NIL_CHK(tag.attributes)) getWithId:@"lat"])];
    [self setPointWithComAdironBusmeIntegrationGeoPoint:[[[ComAdironBusmeIntegrationGeoPoint alloc] initWithDouble:lat withDouble:lon] autorelease]];
  }
  @catch (JavaLangException *e) {
  }
  @try {
    radius_ = [JavaLangLong parseLongWithNSString:((NSString *) [((id<JavaUtilMap>) NIL_CHK(tag.attributes)) getWithId:@"radius"])];
  }
  @catch (JavaLangException *e) {
  }
  loaded_ = YES;
  return self;
}

- (long long int)getRemindPeriod {
  return remindPeriod_;
}

- (void)setRemindPeriodWithLongInt:(long long int)remindPeriod {
  self.remindPeriod = remindPeriod;
}

- (JavaUtilDate *)getRemindTime {
  return remindTime_;
}

- (void)setRemindTimeWithJavaUtilDate:(JavaUtilDate *)remindTime {
  self.remindTime = remindTime;
}

- (ComAdironBusmeIntegrationGeoPoint *)getPoint {
  return point_;
}

- (void)setPointWithComAdironBusmeIntegrationGeoPoint:(ComAdironBusmeIntegrationGeoPoint *)point {
  self.point = point;
}

- (long long int)getRadius {
  return radius_;
}

- (void)setRadiusWithLongInt:(long long int)radius {
  self.radius = radius;
}

- (long long int)getVersion {
  return version__;
}

- (void)setVersionWithLongInt:(long long int)version_ {
  self.version_ = version_;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&remindTime_, nil);
  JreOperatorRetainedAssign(&point_, nil);
  JreOperatorRetainedAssign(&expiryTime_, nil);
  JreOperatorRetainedAssign(&goLabel_, nil);
  JreOperatorRetainedAssign(&goUrl_, nil);
  JreOperatorRetainedAssign(&content_, nil);
  JreOperatorRetainedAssign(&title_, nil);
  JreOperatorRetainedAssign(&id__, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ComAdironBusmeApiMasterMessage *typedCopy = (ComAdironBusmeApiMasterMessage *) copy;
  typedCopy.id_ = id__;
  typedCopy.title = title_;
  typedCopy.priority = priority_;
  typedCopy.seen = seen_;
  typedCopy.content = content_;
  typedCopy.goUrl = goUrl_;
  typedCopy.goLabel = goLabel_;
  typedCopy.remindPeriod = remindPeriod_;
  typedCopy.expiryTime = expiryTime_;
  typedCopy.point = point_;
  typedCopy.radius = radius_;
  typedCopy.version_ = version__;
  typedCopy.displayed = displayed_;
  typedCopy.loaded = loaded_;
  typedCopy.remindTime = remindTime_;
  typedCopy.remindable = remindable_;
}

@end

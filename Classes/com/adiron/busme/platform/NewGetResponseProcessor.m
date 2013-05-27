//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/src/main/java/com/adiron/busme/platform/NewGetResponseProcessor.java
//
//  Created by polar on 5/25/13.
//

#import "IOSClass.h"
#import "com/adiron/busme/api/APIBase.h"
#import "com/adiron/busme/api/Buspass.h"
#import "com/adiron/busme/platform/ActivityAPI.h"
#import "com/adiron/busme/platform/Handler.h"
#import "com/adiron/busme/platform/Log.h"
#import "com/adiron/busme/platform/NewGetResponseProcessor.h"
#import "java/lang/Exception.h"
#import "java/util/Map.h"

@implementation ComAdironBusmePlatformNewGetResponseProcessor

static NSString * ComAdironBusmePlatformNewGetResponseProcessor_LOGTAG_;

- (ComAdironBusmePlatformActivityAPI *)activityAPI {
  return activityAPI_;
}
- (void)setActivityAPI:(ComAdironBusmePlatformActivityAPI *)activityAPI {
  JreOperatorRetainedAssign(&activityAPI_, activityAPI);
}
@synthesize activityAPI = activityAPI_;

+ (NSString *)LOGTAG {
  return ComAdironBusmePlatformNewGetResponseProcessor_LOGTAG_;
}

- (id)initWithComAdironBusmePlatformActivityAPI:(ComAdironBusmePlatformActivityAPI *)api {
  if ((self = [super init])) {
    self.activityAPI = api;
  }
  return self;
}

- (void)processResponseWithComAdironBusmeApiAPIBase_Tag:(ComAdironBusmeApiAPIBase_Tag *)response {
  if (response != nil) {
    NSString *url = ((NSString *) [((id<JavaUtilMap>) NIL_CHK(response.attributes)) getWithId:@"apiUrl"]);
    if (url != nil) {
      [ComAdironBusmePlatformLog dWithNSString:ComAdironBusmePlatformNewGetResponseProcessor_LOGTAG_ withNSString:[NSString stringWithFormat:@"New Get Received on update at : %@", url]];
      [((ComAdironBusmePlatformActivityAPI *) NIL_CHK(activityAPI_)) setApiUrlWithNSString:url];
      ComAdironBusmePlatformHandler *handler = [((ComAdironBusmePlatformActivityAPI *) NIL_CHK(activityAPI_)) getBackgroundHandler];
      if (handler != nil) {
        [handler postWithJavaLangRunnable:[[[ComAdironBusmePlatformNewGetResponseProcessor_$1 alloc] initWithComAdironBusmePlatformNewGetResponseProcessor:self] autorelease]];
      }
    }
  }
}

+ (void)initialize {
  if (self == [ComAdironBusmePlatformNewGetResponseProcessor class]) {
    JreOperatorRetainedAssign(&ComAdironBusmePlatformNewGetResponseProcessor_LOGTAG_, [[IOSClass classWithClass:[ComAdironBusmePlatformNewGetResponseProcessor class]] getName]);
  }
}

- (void)dealloc {
  JreOperatorRetainedAssign(&activityAPI_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ComAdironBusmePlatformNewGetResponseProcessor *typedCopy = (ComAdironBusmePlatformNewGetResponseProcessor *) copy;
  typedCopy.activityAPI = activityAPI_;
}

@end
@implementation ComAdironBusmePlatformNewGetResponseProcessor_$1

- (ComAdironBusmePlatformNewGetResponseProcessor *)this$0 {
  return this$0_;
}
- (void)setThis$0:(ComAdironBusmePlatformNewGetResponseProcessor *)this$0 {
  JreOperatorRetainedAssign(&this$0_, this$0);
}
@synthesize this$0 = this$0_;

- (void)run {
  @try {
    [((ComAdironBusmePlatformActivityAPI *) NIL_CHK(this$0_.activityAPI)) forceGet];
  }
  @catch (JavaLangException *e) {
  }
}

- (id)initWithComAdironBusmePlatformNewGetResponseProcessor:(ComAdironBusmePlatformNewGetResponseProcessor *)outer$ {
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
  ComAdironBusmePlatformNewGetResponseProcessor_$1 *typedCopy = (ComAdironBusmePlatformNewGetResponseProcessor_$1 *) copy;
  typedCopy.this$0 = this$0_;
}

@end
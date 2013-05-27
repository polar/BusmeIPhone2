//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/src/main/java/com/adiron/busme/api/APIBase.java
//
//  Created by polar on 5/25/13.
//

@class ComAdironBusmeApiAPIBase_Tag;
@class ComAdironBusmeIntegrationHttpHttpEntity;
@class ComAdironBusmeIntegrationHttpHttpResponse;
@class ComAdironBusmeIntegrationHttpMyHttpClient;
@class JavaIoInputStream;
@class JavaIoPrintWriter;
@protocol JavaUtilList;
@protocol JavaUtilMap;

#import "JreEmulation.h"

@interface ComAdironBusmeApiAPIBase : NSObject {
 @public
  ComAdironBusmeIntegrationHttpMyHttpClient *myHttpClient_;
  NSString *csrfParam_;
  NSString *csrfToken_;
  NSString *masterParam_;
  NSString *masterToken_;
}

@property (nonatomic, retain) ComAdironBusmeIntegrationHttpMyHttpClient *myHttpClient;
@property (nonatomic, copy) NSString *csrfParam;
@property (nonatomic, copy) NSString *csrfToken;
@property (nonatomic, copy) NSString *masterParam;
@property (nonatomic, copy) NSString *masterToken;

+ (NSString *)LOGTAG;
- (ComAdironBusmeIntegrationHttpHttpEntity *)openURLWithNSString:(NSString *)url;
- (ComAdironBusmeIntegrationHttpHttpResponse *)getURLResponseWithNSString:(NSString *)url;
- (ComAdironBusmeIntegrationHttpHttpEntity *)postURLWithNSString:(NSString *)url
                                                withJavaUtilList:(id<JavaUtilList>)params;
- (ComAdironBusmeIntegrationHttpHttpResponse *)postURLResponseWithNSString:(NSString *)url
                                                          withJavaUtilList:(id<JavaUtilList>)params;
- (ComAdironBusmeIntegrationHttpHttpEntity *)postDeleteURLWithNSString:(NSString *)url;
- (id)init;
- (NSString *)convertStreamToStringWithJavaIoInputStream:(JavaIoInputStream *)inArg;
- (ComAdironBusmeApiAPIBase_Tag *)xmlParseWithJavaIoInputStream:(JavaIoInputStream *)myData;
- (ComAdironBusmeApiAPIBase_Tag *)xmlParseWithComAdironBusmeIntegrationHttpHttpEntity:(ComAdironBusmeIntegrationHttpHttpEntity *)ent;
@end

@interface ComAdironBusmeApiAPIBase_Tag : NSObject {
 @public
  NSString *name_;
  id<JavaUtilMap> attributes_;
  NSString *text_;
  id<JavaUtilList> childNodes_;
}

@property (nonatomic, copy) NSString *name;
@property (nonatomic, retain) id<JavaUtilMap> attributes;
@property (nonatomic, copy) NSString *text;
@property (nonatomic, retain) id<JavaUtilList> childNodes;

- (void)printWithJavaIoPrintWriter:(JavaIoPrintWriter *)outArg;
- (NSString *)description;
- (id)initWithComAdironBusmeApiAPIBase:(ComAdironBusmeApiAPIBase *)outer$;
@end

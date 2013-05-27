//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/src/main/java/com/adiron/busme/integration/http/MyHttpClient.java
//
//  Created by polar on 5/25/13.
//

@class ComAdironBusmeIntegrationHttpHttpEntity;
@class ComAdironBusmeIntegrationHttpHttpResponse;
@protocol JavaUtilList;

#import "JreEmulation.h"

@interface ComAdironBusmeIntegrationHttpMyHttpClient : NSObject {
 @public
  NSString *csrfParam_;
  NSString *csrfToken_;
  NSString *masterParam_;
  NSString *masterToken_;
}

@property (nonatomic, copy) NSString *csrfParam;
@property (nonatomic, copy) NSString *csrfToken;
@property (nonatomic, copy) NSString *masterParam;
@property (nonatomic, copy) NSString *masterToken;

+ (NSString *)LOGTAG;
- (id)init;
- (ComAdironBusmeIntegrationHttpHttpResponse *)getURLResponseWithNSString:(NSString *)url;
- (ComAdironBusmeIntegrationHttpHttpEntity *)openURLWithNSString:(NSString *)url;
- (ComAdironBusmeIntegrationHttpHttpResponse *)postURLResponseWithNSString:(NSString *)url
                                                          withJavaUtilList:(id<JavaUtilList>)params;
- (ComAdironBusmeIntegrationHttpHttpEntity *)postURLWithNSString:(NSString *)url
                                                withJavaUtilList:(id<JavaUtilList>)params;
- (ComAdironBusmeIntegrationHttpHttpEntity *)postDeleteURLWithNSString:(NSString *)url;
@end

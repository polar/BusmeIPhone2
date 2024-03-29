//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/src/main/java/com/adiron/busme/integration/Handler.java
//
//  Created by polar on 5/25/13.
//

@class ComAdironBusmePlatformHandler;
@protocol JavaLangRunnable;

#import "JreEmulation.h"

@interface ComAdironBusmeIntegrationHandler : NSObject {
 @public
  ComAdironBusmePlatformHandler *delegate_;
}

@property (nonatomic, retain) ComAdironBusmePlatformHandler *delegate;

- (BOOL)postWithJavaLangRunnable:(id<JavaLangRunnable>)r;
- (BOOL)postAtFrontOfQueueWithJavaLangRunnable:(id<JavaLangRunnable>)r;
- (BOOL)postDelayedWithJavaLangRunnable:(id<JavaLangRunnable>)r
                            withLongInt:(long long int)delayMillis;
- (void)removeCallbacksWithJavaLangRunnable:(id<JavaLangRunnable>)r
                                     withId:(id)token;
- (void)removeCallbacksWithJavaLangRunnable:(id<JavaLangRunnable>)r;
- (id)init;
@end

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/src/main/java/com/adiron/busme/platform/JourneyStore.java
//
//  Created by polar on 5/25/13.
//

@class ComAdironBusmeApiJourneyPattern;
@class ComAdironBusmeApiRoute;
@class ComAdironBusmePlatformActivityAPI;
@protocol JavaUtilMap;

#import "JreEmulation.h"
#import "com/adiron/busme/api/Storage.h"

#define ComAdironBusmePlatformJourneyStore_serialVersionUID 1064520434557070209

@interface ComAdironBusmePlatformJourneyStore : ComAdironBusmeApiStorage {
 @public
  id<JavaUtilMap> patterns_;
  id<JavaUtilMap> journeys_;
}

@property (nonatomic, retain) id<JavaUtilMap> patterns;
@property (nonatomic, retain) id<JavaUtilMap> journeys;

+ (NSString *)LOGTAG;
- (ComAdironBusmeApiJourneyPattern *)getPatternWithNSString:(NSString *)id_;
- (void)storeJourneyWithComAdironBusmeApiRoute:(ComAdironBusmeApiRoute *)route;
- (ComAdironBusmeApiRoute *)getJourneyWithNSString:(NSString *)id_;
- (void)removeJourneyWithComAdironBusmeApiRoute:(ComAdironBusmeApiRoute *)route;
- (void)postSerializeWithId:(ComAdironBusmePlatformActivityAPI *)busAPI;
- (void)preSerializeWithId:(ComAdironBusmePlatformActivityAPI *)busAPI;
- (id)init;
@end
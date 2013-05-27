//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/src/main/java/com/adiron/busme/api/Route.java
//
//  Created by polar on 5/25/13.
//

@class ComAdironBusmeApiAPIBase_Tag;
@class ComAdironBusmeApiJourneyLocation;
@class ComAdironBusmeApiJourneyPattern;
@class ComAdironBusmeApiNameId;
@class ComAdironBusmeIntegrationGeoPoint;
@class ComAdironBusmePlatformActivityAPI;
@class IOSObjectArray;
@class JavaUtilDate;
@protocol JavaUtilList;
@protocol OrgOsmdroidApiIGeoPoint;

#import "JreEmulation.h"
#import "java/io/Serializable.h"

@interface ComAdironBusmeApiRoute : NSObject < JavaIoSerializable > {
 @public
  ComAdironBusmePlatformActivityAPI *busAPI_;
  NSString *name_;
  NSString *type_;
  NSString *id__;
  NSString *code_;
  NSString *direction_;
  NSString *vid_;
  NSString *workingVid_;
  int sort_;
  long long int version__;
  double nw_lon_, nw_lat_, se_lon_, se_lat_;
  int locationRefreshRate_;
  int startOffset_;
  int duration_;
  long long int startTime_;
  long long int endTime_;
  NSString *patternid_;
  id<JavaUtilList> patternids_;
  id<OrgOsmdroidApiIGeoPoint> lastKnownLocation_;
  float lastKnownDirection_;
  NSString *lastKnownTime_;
  double lastKnownDistance_;
  BOOL onRoute_;
  int lastKnownTimeDiff_;
  ComAdironBusmeIntegrationGeoPoint *zoomCenter_;
  BOOL reported_;
  BOOL reporting_;
  id<JavaUtilList> journeyPatterns_;
}

@property (nonatomic, retain) ComAdironBusmePlatformActivityAPI *busAPI;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *type;
@property (nonatomic, copy) NSString *id_;
@property (nonatomic, copy) NSString *code;
@property (nonatomic, copy) NSString *direction;
@property (nonatomic, copy) NSString *vid;
@property (nonatomic, copy) NSString *workingVid;
@property (nonatomic, assign) int sort;
@property (nonatomic, assign) long long int version_;
@property (nonatomic, assign) double nw_lon;
@property (nonatomic, assign) double nw_lat;
@property (nonatomic, assign) double se_lon;
@property (nonatomic, assign) double se_lat;
@property (nonatomic, assign) int locationRefreshRate;
@property (nonatomic, assign) int startOffset;
@property (nonatomic, assign) int duration;
@property (nonatomic, assign) long long int startTime;
@property (nonatomic, assign) long long int endTime;
@property (nonatomic, copy) NSString *patternid;
@property (nonatomic, retain) id<JavaUtilList> patternids;
@property (nonatomic, retain) id<OrgOsmdroidApiIGeoPoint> lastKnownLocation;
@property (nonatomic, assign) float lastKnownDirection;
@property (nonatomic, copy) NSString *lastKnownTime;
@property (nonatomic, assign) double lastKnownDistance;
@property (nonatomic, assign) BOOL onRoute;
@property (nonatomic, assign) int lastKnownTimeDiff;
@property (nonatomic, retain) ComAdironBusmeIntegrationGeoPoint *zoomCenter;
@property (nonatomic, assign) BOOL reported;
@property (nonatomic, assign) BOOL reporting;
@property (nonatomic, retain) id<JavaUtilList> journeyPatterns;

+ (NSString *)LOGTAG;
- (id)init;
- (int)getSort;
- (void)postSerializeWithComAdironBusmePlatformActivityAPI:(ComAdironBusmePlatformActivityAPI *)api;
- (id)initWithComAdironBusmePlatformActivityAPI:(ComAdironBusmePlatformActivityAPI *)api;
- (long long int)getVersion;
- (ComAdironBusmeApiNameId *)getNameId;
- (NSString *)getId;
- (NSString *)getName;
- (NSString *)getCode;
- (id<JavaUtilList>)getPaths;
- (int)getPathCount;
- (IOSObjectArray *)getPathWithInt:(int)index;
- (NSString *)getVid;
- (void)setVidWithNSString:(NSString *)vid;
- (NSString *)getWorkingVid;
- (void)setWorkingVidWithNSString:(NSString *)workingVid;
- (int)getLastKnownTimeDiff;
- (NSString *)getLastKnownTime;
- (id<OrgOsmdroidApiIGeoPoint>)getLastKnownLocation;
- (double)getLastKnownDistance;
- (float)getLastKnownDirection;
- (BOOL)isOnRoute;
- (BOOL)isJourney;
- (BOOL)isPattern;
- (BOOL)isActiveJourney;
- (BOOL)isStartingJourney;
- (BOOL)isStartingJourneyWithInt:(int)threshold
                     withLongInt:(long long int)time;
- (BOOL)isRouteDefinition;
- (NSString *)getDirection;
- (NSString *)getPatternId;
- (id<JavaUtilList>)getPatternIds;
- (long long int)getStartTimeWithJavaUtilDate:(JavaUtilDate *)day;
- (long long int)getEndTimeWithJavaUtilDate:(JavaUtilDate *)day;
- (long long int)getStartTime;
- (long long int)getEndTime;
- (int)getLocationRefreshRate;
- (id<OrgOsmdroidApiIGeoPoint>)getZoomCenter;
- (int)getLongitudeSpanE6;
- (int)getLatitudeSpanE6;
- (BOOL)isNearRouteWithOrgOsmdroidApiIGeoPoint:(id<OrgOsmdroidApiIGeoPoint>)iGeoPoint
                                    withDouble:(double)d;
- (id<JavaUtilList>)whereOnPathsWithOrgOsmdroidApiIGeoPoint:(id<OrgOsmdroidApiIGeoPoint>)iGeoPoint
                                                    withInt:(int)buffer;
- (id<OrgOsmdroidApiIGeoPoint>)getNearestStartPointWithOrgOsmdroidApiIGeoPoint:(id<OrgOsmdroidApiIGeoPoint>)iGeoPoint
                                                                       withInt:(int)feet;
- (id<OrgOsmdroidApiIGeoPoint>)getStartingPoint;
- (double)getStartingMeasure;
- (double)getStartingMeasureWithInt:(int)threshold
                        withLongInt:(long long int)time;
- (void)setPatternIdWithInt:(int)index
               withNSString:(NSString *)id_;
- (void)loadParsedXMLWithComAdironBusmeApiAPIBase_Tag:(ComAdironBusmeApiAPIBase_Tag *)n;
- (IOSObjectArray *)pushCurrentLocationWithComAdironBusmeApiJourneyLocation:(ComAdironBusmeApiJourneyLocation *)loc;
- (void)preSerialize;
- (void)dealloc;
- (BOOL)isReported;
- (BOOL)isReporting;
- (void)setReportingWithBOOL:(BOOL)reporting;
- (void)setIdentificationWithNSString:(NSString *)type
                         withNSString:(NSString *)name
                         withNSString:(NSString *)id_
                              withInt:(int)version_;
- (ComAdironBusmeApiJourneyPattern *)getJourneyPatternWithInt:(int)i;
- (void)setJourneyPatternWithInt:(int)index
withComAdironBusmeApiJourneyPattern:(ComAdironBusmeApiJourneyPattern *)jp;
- (BOOL)isFinished;
@end
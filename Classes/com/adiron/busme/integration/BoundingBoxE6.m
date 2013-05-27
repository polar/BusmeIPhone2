//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/src/main/java/com/adiron/busme/integration/BoundingBoxE6.java
//
//  Created by polar on 5/25/13.
//

#import "com/adiron/busme/integration/BoundingBoxE6.h"
#import "com/adiron/busme/integration/GeoPoint.h"
#import "java/lang/Integer.h"
#import "java/lang/Math.h"
#import "java/lang/StringBuffer.h"
#import "java/util/ArrayList.h"
#import "java/util/Iterator.h"

@implementation ComAdironBusmeIntegrationBoundingBoxE6

@synthesize mLatNorthE6 = mLatNorthE6_;
@synthesize mLatSouthE6 = mLatSouthE6_;
@synthesize mLonEastE6 = mLonEastE6_;
@synthesize mLonWestE6 = mLonWestE6_;

+ (long long int)serialVersionUID {
  return ComAdironBusmeIntegrationBoundingBoxE6_serialVersionUID;
}

- (id)initWithInt:(int)northE6
          withInt:(int)eastE6
          withInt:(int)southE6
          withInt:(int)westE6 {
  if ((self = [super init])) {
    self.mLatNorthE6 = northE6;
    self.mLonEastE6 = eastE6;
    self.mLatSouthE6 = southE6;
    self.mLonWestE6 = westE6;
  }
  return self;
}

- (id)initWithDouble:(double)north
          withDouble:(double)east
          withDouble:(double)south
          withDouble:(double)west {
  if ((self = [super init])) {
    self.mLatNorthE6 = (int) (north * 1E6);
    self.mLonEastE6 = (int) (east * 1E6);
    self.mLatSouthE6 = (int) (south * 1E6);
    self.mLonWestE6 = (int) (west * 1E6);
  }
  return self;
}

- (ComAdironBusmeIntegrationGeoPoint *)getCenter {
  return [[[ComAdironBusmeIntegrationGeoPoint alloc] initWithInt:(self.mLatNorthE6 + self.mLatSouthE6) / 2 withInt:(self.mLonEastE6 + self.mLonWestE6) / 2] autorelease];
}

- (int)getDiagonalLengthInMeters {
  return [((ComAdironBusmeIntegrationGeoPoint *) [[[ComAdironBusmeIntegrationGeoPoint alloc] initWithInt:self.mLatNorthE6 withInt:self.mLonWestE6] autorelease]) distanceToWithOrgOsmdroidApiIGeoPoint:[[[ComAdironBusmeIntegrationGeoPoint alloc] initWithInt:self.mLatSouthE6 withInt:self.mLonEastE6] autorelease]];
}

- (int)getLatNorthE6 {
  return self.mLatNorthE6;
}

- (int)getLatSouthE6 {
  return self.mLatSouthE6;
}

- (int)getLonEastE6 {
  return self.mLonEastE6;
}

- (int)getLonWestE6 {
  return self.mLonWestE6;
}

- (int)getLatitudeSpanE6 {
  return [JavaLangMath absWithInt:self.mLatNorthE6 - self.mLatSouthE6];
}

- (int)getLongitudeSpanE6 {
  return [JavaLangMath absWithInt:self.mLonEastE6 - self.mLonWestE6];
}

- (ComAdironBusmeIntegrationGeoPoint *)getGeoPointOfRelativePositionWithLinearInterpolationWithFloat:(float)relX
                                                                                           withFloat:(float)relY {
  int lat = (int) (self.mLatNorthE6 - ([self getLatitudeSpanE6] * relY));
  int lon = (int) (self.mLonWestE6 + ([self getLongitudeSpanE6] * relX));
  while (lat > 90500000) lat -= 90500000;
  while (lat < -90500000) lat += 90500000;
  while (lon > 180000000) lon -= 180000000;
  while (lon < -180000000) lon += 180000000;
  return [[[ComAdironBusmeIntegrationGeoPoint alloc] initWithInt:lat withInt:lon] autorelease];
}

- (ComAdironBusmeIntegrationBoundingBoxE6 *)increaseByScaleWithFloat:(float)pBoundingboxPaddingRelativeScale {
  ComAdironBusmeIntegrationGeoPoint *pCenter = [self getCenter];
  int mLatSpanE6Padded_2 = (int) (([self getLatitudeSpanE6] * pBoundingboxPaddingRelativeScale) / 2);
  int mLonSpanE6Padded_2 = (int) (([self getLongitudeSpanE6] * pBoundingboxPaddingRelativeScale) / 2);
  return [[[ComAdironBusmeIntegrationBoundingBoxE6 alloc] initWithInt:[((ComAdironBusmeIntegrationGeoPoint *) NIL_CHK(pCenter)) getLatitudeE6] + mLatSpanE6Padded_2 withInt:[((ComAdironBusmeIntegrationGeoPoint *) NIL_CHK(pCenter)) getLongitudeE6] + mLonSpanE6Padded_2 withInt:[((ComAdironBusmeIntegrationGeoPoint *) NIL_CHK(pCenter)) getLatitudeE6] - mLatSpanE6Padded_2 withInt:[((ComAdironBusmeIntegrationGeoPoint *) NIL_CHK(pCenter)) getLongitudeE6] - mLonSpanE6Padded_2] autorelease];
}

- (NSString *)description {
  return [[[[[[[[[((JavaLangStringBuffer *) [[[JavaLangStringBuffer alloc] init] autorelease]) appendWithNSString:@"N:"] appendWithInt:self.mLatNorthE6] appendWithNSString:@"; E:"] appendWithInt:self.mLonEastE6] appendWithNSString:@"; S:"] appendWithInt:self.mLatSouthE6] appendWithNSString:@"; W:"] appendWithInt:self.mLonWestE6] description];
}

- (ComAdironBusmeIntegrationGeoPoint *)bringToBoundingBoxWithInt:(int)aLatitudeE6
                                                         withInt:(int)aLongitudeE6 {
  return [[[ComAdironBusmeIntegrationGeoPoint alloc] initWithInt:[JavaLangMath maxWithInt:self.mLatSouthE6 withInt:[JavaLangMath minWithInt:self.mLatNorthE6 withInt:aLatitudeE6]] withInt:[JavaLangMath maxWithInt:self.mLonWestE6 withInt:[JavaLangMath minWithInt:self.mLonEastE6 withInt:aLongitudeE6]]] autorelease];
}

+ (ComAdironBusmeIntegrationBoundingBoxE6 *)fromGeoPointsWithJavaUtilArrayList:(JavaUtilArrayList *)partialPolyLine {
  int minLat = JavaLangInteger_MAX_VALUE;
  int minLon = JavaLangInteger_MAX_VALUE;
  int maxLat = JavaLangInteger_MIN_VALUE;
  int maxLon = JavaLangInteger_MIN_VALUE;
  {
    id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [((JavaUtilArrayList *) NIL_CHK(partialPolyLine)) iterator]);
    while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
      ComAdironBusmeIntegrationGeoPoint *gp = ((ComAdironBusmeIntegrationGeoPoint *) [((id<JavaUtilIterator>) NIL_CHK(iter__)) next]);
      int latitudeE6 = [((ComAdironBusmeIntegrationGeoPoint *) NIL_CHK(gp)) getLatitudeE6];
      int longitudeE6 = [((ComAdironBusmeIntegrationGeoPoint *) NIL_CHK(gp)) getLongitudeE6];
      minLat = [JavaLangMath minWithInt:minLat withInt:latitudeE6];
      minLon = [JavaLangMath minWithInt:minLon withInt:longitudeE6];
      maxLat = [JavaLangMath maxWithInt:maxLat withInt:latitudeE6];
      maxLon = [JavaLangMath maxWithInt:maxLon withInt:longitudeE6];
    }
  }
  return [[[ComAdironBusmeIntegrationBoundingBoxE6 alloc] initWithInt:minLat withInt:minLon withInt:maxLat withInt:maxLon] autorelease];
}

- (BOOL)containsWithComAdironBusmeIntegrationGeoPoint:(ComAdironBusmeIntegrationGeoPoint *)pGeoPoint {
  return [self containsWithInt:[((ComAdironBusmeIntegrationGeoPoint *) NIL_CHK(pGeoPoint)) getLatitudeE6] withInt:[((ComAdironBusmeIntegrationGeoPoint *) NIL_CHK(pGeoPoint)) getLongitudeE6]];
}

- (BOOL)containsWithInt:(int)aLatitudeE6
                withInt:(int)aLongitudeE6 {
  return ((aLatitudeE6 < self.mLatNorthE6) && (aLatitudeE6 > self.mLatSouthE6)) && ((aLongitudeE6 < self.mLonEastE6) && (aLongitudeE6 > self.mLonWestE6));
}

- (void)dealloc {
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ComAdironBusmeIntegrationBoundingBoxE6 *typedCopy = (ComAdironBusmeIntegrationBoundingBoxE6 *) copy;
  typedCopy.mLatNorthE6 = mLatNorthE6_;
  typedCopy.mLatSouthE6 = mLatSouthE6_;
  typedCopy.mLonEastE6 = mLonEastE6_;
  typedCopy.mLonWestE6 = mLonWestE6_;
}

@end

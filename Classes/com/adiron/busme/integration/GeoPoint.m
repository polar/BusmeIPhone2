//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/src/main/java/com/adiron/busme/integration/GeoPoint.java
//
//  Created by polar on 5/25/13.
//

#import "IOSClass.h"
#import "com/adiron/busme/integration/GeoPoint.h"
#import "com/adiron/busme/integration/Location.h"
#import "java/lang/Double.h"
#import "java/lang/Integer.h"
#import "java/lang/Math.h"
#import "java/lang/StringBuilder.h"
#import "org/osmdroid/api/IGeoPoint.h"
#import "org/osmdroid/util/constants/GeoConstants.h"

@implementation ComAdironBusmeIntegrationGeoPoint

@synthesize mLongitudeE6 = mLongitudeE6_;
@synthesize mLatitudeE6 = mLatitudeE6_;
@synthesize mAltitude = mAltitude_;

+ (float)DEG2RAD {
  return ComAdironBusmeIntegrationGeoPoint_DEG2RAD;
}

+ (long long int)serialVersionUID {
  return ComAdironBusmeIntegrationGeoPoint_serialVersionUID;
}

- (id)initWithInt:(int)aLatitudeE6
          withInt:(int)aLongitudeE6 {
  if ((self = [super init])) {
    self.mLatitudeE6 = aLatitudeE6;
    self.mLongitudeE6 = aLongitudeE6;
  }
  return self;
}

- (id)initWithInt:(int)aLatitudeE6
          withInt:(int)aLongitudeE6
          withInt:(int)aAltitude {
  if ((self = [super init])) {
    self.mLatitudeE6 = aLatitudeE6;
    self.mLongitudeE6 = aLongitudeE6;
    self.mAltitude = aAltitude;
  }
  return self;
}

- (id)initWithDouble:(double)aLatitude
          withDouble:(double)aLongitude {
  if ((self = [super init])) {
    self.mLatitudeE6 = (int) (aLatitude * 1E6);
    self.mLongitudeE6 = (int) (aLongitude * 1E6);
  }
  return self;
}

- (id)initComAdironBusmeIntegrationGeoPointWithDouble:(double)aLatitude
                                           withDouble:(double)aLongitude
                                           withDouble:(double)aAltitude {
  if ((self = [super init])) {
    self.mLatitudeE6 = (int) (aLatitude * 1E6);
    self.mLongitudeE6 = (int) (aLongitude * 1E6);
    self.mAltitude = (int) aAltitude;
  }
  return self;
}

- (id)initWithDouble:(double)aLatitude
          withDouble:(double)aLongitude
          withDouble:(double)aAltitude {
  return [self initComAdironBusmeIntegrationGeoPointWithDouble:aLatitude withDouble:aLongitude withDouble:aAltitude];
}

- (id)initWithComAdironBusmeIntegrationLocation:(ComAdironBusmeIntegrationLocation *)aLocation {
  return [self initComAdironBusmeIntegrationGeoPointWithDouble:[((ComAdironBusmeIntegrationLocation *) NIL_CHK(aLocation)) getLatitude] withDouble:[((ComAdironBusmeIntegrationLocation *) NIL_CHK(aLocation)) getLongitude] withDouble:[((ComAdironBusmeIntegrationLocation *) NIL_CHK(aLocation)) getAltitude]];
}

- (id)initWithComAdironBusmeIntegrationGeoPoint:(ComAdironBusmeIntegrationGeoPoint *)aGeopoint {
  if ((self = [super init])) {
    self.mLatitudeE6 = ((ComAdironBusmeIntegrationGeoPoint *) NIL_CHK(aGeopoint)).mLatitudeE6;
    self.mLongitudeE6 = ((ComAdironBusmeIntegrationGeoPoint *) NIL_CHK(aGeopoint)).mLongitudeE6;
    self.mAltitude = ((ComAdironBusmeIntegrationGeoPoint *) NIL_CHK(aGeopoint)).mAltitude;
  }
  return self;
}

+ (ComAdironBusmeIntegrationGeoPoint *)fromDoubleStringWithNSString:(NSString *)s
                                                        withUnichar:(unichar)spacer {
  int spacerPos1 = [NIL_CHK(s) indexOf:spacer];
  int spacerPos2 = [NIL_CHK(s) indexOf:spacer fromIndex:spacerPos1 + 1];
  if (spacerPos2 == -1) {
    return [[[ComAdironBusmeIntegrationGeoPoint alloc] initWithInt:(int) ([JavaLangDouble parseDoubleWithNSString:[NIL_CHK(s) substring:0 endIndex:spacerPos1]] * 1E6) withInt:(int) ([JavaLangDouble parseDoubleWithNSString:[NIL_CHK(s) substring:spacerPos1 + 1 endIndex:[NIL_CHK(s) length]]] * 1E6)] autorelease];
  }
  else {
    return [[[ComAdironBusmeIntegrationGeoPoint alloc] initWithInt:(int) ([JavaLangDouble parseDoubleWithNSString:[NIL_CHK(s) substring:0 endIndex:spacerPos1]] * 1E6) withInt:(int) ([JavaLangDouble parseDoubleWithNSString:[NIL_CHK(s) substring:spacerPos1 + 1 endIndex:spacerPos2]] * 1E6) withInt:(int) [JavaLangDouble parseDoubleWithNSString:[NIL_CHK(s) substring:spacerPos2 + 1 endIndex:[NIL_CHK(s) length]]]] autorelease];
  }
}

+ (ComAdironBusmeIntegrationGeoPoint *)fromInvertedDoubleStringWithNSString:(NSString *)s
                                                                withUnichar:(unichar)spacer {
  int spacerPos1 = [NIL_CHK(s) indexOf:spacer];
  int spacerPos2 = [NIL_CHK(s) indexOf:spacer fromIndex:spacerPos1 + 1];
  if (spacerPos2 == -1) {
    return [[[ComAdironBusmeIntegrationGeoPoint alloc] initWithInt:(int) ([JavaLangDouble parseDoubleWithNSString:[NIL_CHK(s) substring:spacerPos1 + 1 endIndex:[NIL_CHK(s) length]]] * 1E6) withInt:(int) ([JavaLangDouble parseDoubleWithNSString:[NIL_CHK(s) substring:0 endIndex:spacerPos1]] * 1E6)] autorelease];
  }
  else {
    return [[[ComAdironBusmeIntegrationGeoPoint alloc] initWithInt:(int) ([JavaLangDouble parseDoubleWithNSString:[NIL_CHK(s) substring:spacerPos1 + 1 endIndex:spacerPos2]] * 1E6) withInt:(int) ([JavaLangDouble parseDoubleWithNSString:[NIL_CHK(s) substring:0 endIndex:spacerPos1]] * 1E6) withInt:(int) [JavaLangDouble parseDoubleWithNSString:[NIL_CHK(s) substring:spacerPos2 + 1 endIndex:[NIL_CHK(s) length]]]] autorelease];
  }
}

+ (ComAdironBusmeIntegrationGeoPoint *)fromIntStringWithNSString:(NSString *)s {
  int commaPos1 = [NIL_CHK(s) indexOf:','];
  int commaPos2 = [NIL_CHK(s) indexOf:',' fromIndex:commaPos1 + 1];
  if (commaPos2 == -1) {
    return [[[ComAdironBusmeIntegrationGeoPoint alloc] initWithInt:[JavaLangInteger parseIntWithNSString:[NIL_CHK(s) substring:0 endIndex:commaPos1]] withInt:[JavaLangInteger parseIntWithNSString:[NIL_CHK(s) substring:commaPos1 + 1 endIndex:[NIL_CHK(s) length]]]] autorelease];
  }
  else {
    return [[[ComAdironBusmeIntegrationGeoPoint alloc] initWithInt:[JavaLangInteger parseIntWithNSString:[NIL_CHK(s) substring:0 endIndex:commaPos1]] withInt:[JavaLangInteger parseIntWithNSString:[NIL_CHK(s) substring:commaPos1 + 1 endIndex:commaPos2]] withInt:[JavaLangInteger parseIntWithNSString:[NIL_CHK(s) substring:commaPos2 + 1 endIndex:[NIL_CHK(s) length]]]] autorelease];
  }
}

- (int)getLongitudeE6 {
  return self.mLongitudeE6;
}

- (int)getLatitudeE6 {
  return self.mLatitudeE6;
}

- (int)getAltitude {
  return self.mAltitude;
}

- (void)setLongitudeE6WithInt:(int)aLongitudeE6 {
  self.mLongitudeE6 = aLongitudeE6;
}

- (void)setLatitudeE6WithInt:(int)aLatitudeE6 {
  self.mLatitudeE6 = aLatitudeE6;
}

- (void)setAltitudeWithInt:(int)aAltitude {
  self.mAltitude = aAltitude;
}

- (void)setCoordsE6WithInt:(int)aLatitudeE6
                   withInt:(int)aLongitudeE6 {
  self.mLatitudeE6 = aLatitudeE6;
  self.mLongitudeE6 = aLongitudeE6;
}

- (id)clone {
  return [[[ComAdironBusmeIntegrationGeoPoint alloc] initWithInt:self.mLatitudeE6 withInt:self.mLongitudeE6] autorelease];
}

- (NSString *)description {
  return [[[[[[((JavaLangStringBuilder *) [[[JavaLangStringBuilder alloc] init] autorelease]) appendWithInt:self.mLatitudeE6] appendWithNSString:@","] appendWithInt:self.mLongitudeE6] appendWithNSString:@","] appendWithInt:self.mAltitude] description];
}

- (BOOL)isEqual:(id)obj {
  if (obj == nil) {
    return NO;
  }
  if (obj == self) {
    return YES;
  }
  if ([NIL_CHK(obj) getClass] != [self getClass]) {
    return NO;
  }
  ComAdironBusmeIntegrationGeoPoint *rhs = (ComAdironBusmeIntegrationGeoPoint *) obj;
  return ((ComAdironBusmeIntegrationGeoPoint *) NIL_CHK(rhs)).mLatitudeE6 == self.mLatitudeE6 && ((ComAdironBusmeIntegrationGeoPoint *) NIL_CHK(rhs)).mLongitudeE6 == self.mLongitudeE6 && ((ComAdironBusmeIntegrationGeoPoint *) NIL_CHK(rhs)).mAltitude == self.mAltitude;
}

- (NSUInteger)hash {
  return 37 * (17 * mLatitudeE6_ + mLongitudeE6_) + mAltitude_;
}

- (int)distanceToWithOrgOsmdroidApiIGeoPoint:(id<OrgOsmdroidApiIGeoPoint>)other {
  double a1 = ComAdironBusmeIntegrationGeoPoint_DEG2RAD * self.mLatitudeE6 / 1E6;
  double a2 = ComAdironBusmeIntegrationGeoPoint_DEG2RAD * self.mLongitudeE6 / 1E6;
  double b1 = ComAdironBusmeIntegrationGeoPoint_DEG2RAD * [((id<OrgOsmdroidApiIGeoPoint>) NIL_CHK(other)) getLatitudeE6] / 1E6;
  double b2 = ComAdironBusmeIntegrationGeoPoint_DEG2RAD * [((id<OrgOsmdroidApiIGeoPoint>) NIL_CHK(other)) getLongitudeE6] / 1E6;
  double cosa1 = [JavaLangMath cosWithDouble:a1];
  double cosb1 = [JavaLangMath cosWithDouble:b1];
  double t1 = cosa1 * [JavaLangMath cosWithDouble:a2] * cosb1 * [JavaLangMath cosWithDouble:b2];
  double t2 = cosa1 * [JavaLangMath sinWithDouble:a2] * cosb1 * [JavaLangMath sinWithDouble:b2];
  double t3 = [JavaLangMath sinWithDouble:a1] * [JavaLangMath sinWithDouble:b1];
  double tt = [JavaLangMath acosWithDouble:t1 + t2 + t3];
  return (int) (OrgOsmdroidUtilConstantsGeoConstants_RADIUS_EARTH_METERS * tt);
}

- (double)bearingToWithOrgOsmdroidApiIGeoPoint:(id<OrgOsmdroidApiIGeoPoint>)other {
  double lat1 = [JavaLangMath toRadiansWithDouble:self.mLatitudeE6 / 1E6];
  double long1 = [JavaLangMath toRadiansWithDouble:self.mLongitudeE6 / 1E6];
  double lat2 = [JavaLangMath toRadiansWithDouble:[((id<OrgOsmdroidApiIGeoPoint>) NIL_CHK(other)) getLatitudeE6] / 1E6];
  double long2 = [JavaLangMath toRadiansWithDouble:[((id<OrgOsmdroidApiIGeoPoint>) NIL_CHK(other)) getLongitudeE6] / 1E6];
  double delta_long = long2 - long1;
  double a = [JavaLangMath sinWithDouble:delta_long] * [JavaLangMath cosWithDouble:lat2];
  double b = [JavaLangMath cosWithDouble:lat1] * [JavaLangMath sinWithDouble:lat2] - [JavaLangMath sinWithDouble:lat1] * [JavaLangMath cosWithDouble:lat2] * [JavaLangMath cosWithDouble:delta_long];
  double bearing = [JavaLangMath toDegreesWithDouble:[JavaLangMath atan2WithDouble:a withDouble:b]];
  double bearing_normalized = fmod((bearing + 360), 360);
  return bearing_normalized;
}

- (ComAdironBusmeIntegrationGeoPoint *)destinationPointWithDouble:(double)aDistanceInMeters
                                                        withFloat:(float)aBearingInDegrees {
  double dist = aDistanceInMeters / OrgOsmdroidUtilConstantsGeoConstants_RADIUS_EARTH_METERS;
  float brng = ComAdironBusmeIntegrationGeoPoint_DEG2RAD * aBearingInDegrees;
  double lat1 = ComAdironBusmeIntegrationGeoPoint_DEG2RAD * [self getLatitudeE6] / 1E6;
  double lon1 = ComAdironBusmeIntegrationGeoPoint_DEG2RAD * [self getLongitudeE6] / 1E6;
  double lat2 = [JavaLangMath asinWithDouble:[JavaLangMath sinWithDouble:lat1] * [JavaLangMath cosWithDouble:dist] + [JavaLangMath cosWithDouble:lat1] * [JavaLangMath sinWithDouble:dist] * [JavaLangMath cosWithDouble:brng]];
  double lon2 = lon1 + [JavaLangMath atan2WithDouble:[JavaLangMath sinWithDouble:brng] * [JavaLangMath sinWithDouble:dist] * [JavaLangMath cosWithDouble:lat1] withDouble:[JavaLangMath cosWithDouble:dist] - [JavaLangMath sinWithDouble:lat1] * [JavaLangMath sinWithDouble:lat2]];
  double lat2deg = lat2 / ComAdironBusmeIntegrationGeoPoint_DEG2RAD;
  double lon2deg = lon2 / ComAdironBusmeIntegrationGeoPoint_DEG2RAD;
  return [[[ComAdironBusmeIntegrationGeoPoint alloc] initWithDouble:lat2deg withDouble:lon2deg] autorelease];
}

+ (ComAdironBusmeIntegrationGeoPoint *)fromCenterBetweenWithComAdironBusmeIntegrationGeoPoint:(ComAdironBusmeIntegrationGeoPoint *)geoPointA
                                                        withComAdironBusmeIntegrationGeoPoint:(ComAdironBusmeIntegrationGeoPoint *)geoPointB {
  return [[[ComAdironBusmeIntegrationGeoPoint alloc] initWithInt:([((ComAdironBusmeIntegrationGeoPoint *) NIL_CHK(geoPointA)) getLatitudeE6] + [((ComAdironBusmeIntegrationGeoPoint *) NIL_CHK(geoPointB)) getLatitudeE6]) / 2 withInt:([((ComAdironBusmeIntegrationGeoPoint *) NIL_CHK(geoPointA)) getLongitudeE6] + [((ComAdironBusmeIntegrationGeoPoint *) NIL_CHK(geoPointB)) getLongitudeE6]) / 2] autorelease];
}

- (NSString *)toDoubleString {
  return [[[[[[((JavaLangStringBuilder *) [[[JavaLangStringBuilder alloc] init] autorelease]) appendWithDouble:self.mLatitudeE6 / 1E6] appendWithNSString:@","] appendWithDouble:self.mLongitudeE6 / 1E6] appendWithNSString:@","] appendWithInt:self.mAltitude] description];
}

- (NSString *)toInvertedDoubleString {
  return [[[[[[((JavaLangStringBuilder *) [[[JavaLangStringBuilder alloc] init] autorelease]) appendWithDouble:self.mLongitudeE6 / 1E6] appendWithNSString:@","] appendWithDouble:self.mLatitudeE6 / 1E6] appendWithNSString:@","] appendWithInt:self.mAltitude] description];
}

- (id)copyWithZone:(NSZone *)zone {
  return [[self clone] retain];
}

- (void)dealloc {
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ComAdironBusmeIntegrationGeoPoint *typedCopy = (ComAdironBusmeIntegrationGeoPoint *) copy;
  typedCopy.mLongitudeE6 = mLongitudeE6_;
  typedCopy.mLatitudeE6 = mLatitudeE6_;
  typedCopy.mAltitude = mAltitude_;
}

@end

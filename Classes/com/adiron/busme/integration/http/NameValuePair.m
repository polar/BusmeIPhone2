//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/src/main/java/com/adiron/busme/integration/http/NameValuePair.java
//
//  Created by polar on 5/25/13.
//

#import "com/adiron/busme/integration/http/NameValuePair.h"

@implementation ComAdironBusmeIntegrationHttpNameValuePair

- (NSString *)name {
  return name_;
}
- (void)setName:(NSString *)name {
  JreOperatorRetainedAssign(&name_, name);
}
@synthesize name = name_;
- (NSString *)value {
  return value_;
}
- (void)setValue:(NSString *)value {
  JreOperatorRetainedAssign(&value_, value);
}
@synthesize value = value_;

- (id)initWithNSString:(NSString *)name
          withNSString:(NSString *)value {
  if ((self = [super init])) {
    self.name = name;
    self.value = value;
  }
  return self;
}

- (NSString *)getName {
  return name_;
}

- (NSString *)getValue {
  return value_;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&value_, nil);
  JreOperatorRetainedAssign(&name_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ComAdironBusmeIntegrationHttpNameValuePair *typedCopy = (ComAdironBusmeIntegrationHttpNameValuePair *) copy;
  typedCopy.name = name_;
  typedCopy.value = value_;
}

@end
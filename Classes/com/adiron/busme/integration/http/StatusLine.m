//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/src/main/java/com/adiron/busme/integration/http/StatusLine.java
//
//  Created by polar on 5/25/13.
//

#import "com/adiron/busme/integration/http/StatusLine.h"

@implementation ComAdironBusmeIntegrationHttpStatusLine

@synthesize statusCode = statusCode_;
- (NSString *)reasonPhrase {
  return reasonPhrase_;
}
- (void)setReasonPhrase:(NSString *)reasonPhrase {
  JreOperatorRetainedAssign(&reasonPhrase_, reasonPhrase);
}
@synthesize reasonPhrase = reasonPhrase_;

- (id)initWithInt:(int)code
     withNSString:(NSString *)reason {
  if ((self = [super init])) {
    statusCode_ = code;
    JreOperatorRetainedAssign(&reasonPhrase_, reason);
  }
  return self;
}

- (int)getStatusCode {
  return statusCode_;
}

- (NSString *)getReasonPhrase {
  return reasonPhrase_;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&reasonPhrase_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ComAdironBusmeIntegrationHttpStatusLine *typedCopy = (ComAdironBusmeIntegrationHttpStatusLine *) copy;
  typedCopy.statusCode = statusCode_;
  typedCopy.reasonPhrase = reasonPhrase_;
}

@end

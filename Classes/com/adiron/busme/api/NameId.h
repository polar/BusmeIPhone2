//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/src/main/java/com/adiron/busme/api/NameId.java
//
//  Created by polar on 5/25/13.
//

@class IOSObjectArray;

#import "JreEmulation.h"

@interface ComAdironBusmeApiNameId : NSObject {
 @public
  NSString *name_;
  NSString *id__;
  NSString *route_id_;
  NSString *type_;
  long long int version__;
}

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *id_;
@property (nonatomic, copy) NSString *route_id;
@property (nonatomic, copy) NSString *type;
@property (nonatomic, assign) long long int version_;

- (id)initWithNSString:(NSString *)name
          withNSString:(NSString *)id_;
- (id)initWithNSStringArray:(IOSObjectArray *)name_id;
- (NSString *)description;
@end
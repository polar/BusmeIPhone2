//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/src/main/java/com/adiron/busme/platform/BusmeConfigurator.java
//
//  Created by polar on 5/25/13.
//

#import "com/adiron/busme/api/BuspassAPI.h"
#import "com/adiron/busme/api/Master.h"
#import "com/adiron/busme/platform/BusmeConfigurator.h"

@implementation ComAdironBusmePlatformBusmeConfigurator

- (ComAdironBusmeApiMaster *)getDefaultMaster {
  ComAdironBusmeApiMaster *master = nil;
  return master;
}

- (void)saveAsDefaultMasterWithComAdironBusmeApiMaster:(ComAdironBusmeApiMaster *)master {
}

- (void)removeDefaultMaster {
}

- (NSString *)retreiveStoredAuthTokenForMasterWithNSString:(NSString *)name {
  return nil;
}

- (void)forgetUserForMasterWithNSString:(NSString *)masterName {
}

- (void)storeCredentialsForMasterWithNSString:(NSString *)master
        withComAdironBusmeApiBuspassAPI_Login:(ComAdironBusmeApiBuspassAPI_Login *)login {
}

- (void)removeCredentialsAuthTokenForMasterWithNSString:(NSString *)master
                  withComAdironBusmeApiBuspassAPI_Login:(ComAdironBusmeApiBuspassAPI_Login *)login {
}

- (id)init {
  return [super init];
}

- (void)dealloc {
  [super dealloc];
}

@end

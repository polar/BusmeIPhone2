//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/src/main/java/com/adiron/busme/platform/BusmeConfigurator.java
//
//  Created by polar on 5/25/13.
//

@class ComAdironBusmeApiBuspassAPI_Login;
@class ComAdironBusmeApiMaster;

#import "JreEmulation.h"

@interface ComAdironBusmePlatformBusmeConfigurator : NSObject {
}

- (ComAdironBusmeApiMaster *)getDefaultMaster;
- (void)saveAsDefaultMasterWithComAdironBusmeApiMaster:(ComAdironBusmeApiMaster *)master;
- (void)removeDefaultMaster;
- (NSString *)retreiveStoredAuthTokenForMasterWithNSString:(NSString *)name;
- (void)forgetUserForMasterWithNSString:(NSString *)masterName;
- (void)storeCredentialsForMasterWithNSString:(NSString *)master
        withComAdironBusmeApiBuspassAPI_Login:(ComAdironBusmeApiBuspassAPI_Login *)login;
- (void)removeCredentialsAuthTokenForMasterWithNSString:(NSString *)master
                  withComAdironBusmeApiBuspassAPI_Login:(ComAdironBusmeApiBuspassAPI_Login *)login;
- (id)init;
@end

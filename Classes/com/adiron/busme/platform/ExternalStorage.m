//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/src/main/java/com/adiron/busme/platform/ExternalStorage.java
//
//  Created by polar on 5/25/13.
//

#import "com/adiron/busme/integration/ExternalStorage.h"
#import "com/adiron/busme/platform/ExternalStorage.h"
#import "java/io/File.h"

@implementation ComAdironBusmePlatformExternalStorage

+ (BOOL)isExternalStorageAvailable {
  return [ComAdironBusmeIntegrationExternalStorage isExternalStorageAvailable];
}

+ (BOOL)isExternalStorageWriteable {
  return [ComAdironBusmeIntegrationExternalStorage isExternalStorageWriteable];
}

+ (JavaIoFile *)getExternalStorageDirectory {
  return [ComAdironBusmeIntegrationExternalStorage getExternalStorageDirectory];
}

- (id)init {
  return [super init];
}

- (void)dealloc {
  [super dealloc];
}

@end
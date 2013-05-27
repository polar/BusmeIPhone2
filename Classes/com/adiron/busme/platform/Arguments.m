//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/src/main/java/com/adiron/busme/platform/Arguments.java
//
//  Created by polar on 5/25/13.
//

#import "IOSBooleanArray.h"
#import "IOSByteArray.h"
#import "IOSCharArray.h"
#import "IOSDoubleArray.h"
#import "IOSFloatArray.h"
#import "IOSIntArray.h"
#import "IOSLongArray.h"
#import "IOSObjectArray.h"
#import "IOSShortArray.h"
#import "com/adiron/busme/integration/Arguments.h"
#import "com/adiron/busme/platform/Arguments.h"
#import "java/io/Serializable.h"
#import "java/lang/Byte.h"
#import "java/lang/CharSequence.h"
#import "java/lang/ClassLoader.h"
#import "java/lang/Integer.h"
#import "java/util/ArrayList.h"
#import "java/util/Set.h"

@implementation ComAdironBusmePlatformArguments

- (ComAdironBusmeIntegrationArguments *)delegate {
  return delegate_;
}
- (void)setDelegate:(ComAdironBusmeIntegrationArguments *)delegate {
  JreOperatorRetainedAssign(&delegate_, delegate);
}
@synthesize delegate = delegate_;

- (ComAdironBusmeIntegrationArguments *)getIntegration {
  return delegate_;
}

- (void)clear {
  [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) clear];
}

- (BOOL)containsKeyWithNSString:(NSString *)key {
  return [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) containsKeyWithNSString:key];
}

- (int)describeContents {
  return [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) describeContents];
}

- (BOOL)isEqual:(id)o {
  return [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) isEqual:o];
}

- (id)getWithNSString:(NSString *)key {
  return [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) getWithNSString:key];
}

- (BOOL)getBooleanWithNSString:(NSString *)key
                      withBOOL:(BOOL)defaultValue {
  return [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) getBooleanWithNSString:key withBOOL:defaultValue];
}

- (BOOL)getBooleanWithNSString:(NSString *)key {
  return [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) getBooleanWithNSString:key];
}

- (IOSBooleanArray *)getBooleanArrayWithNSString:(NSString *)key {
  return [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) getBooleanArrayWithNSString:key];
}

- (JavaLangByte *)getByteWithNSString:(NSString *)key
                             withChar:(char)defaultValue {
  return [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) getByteWithNSString:key withChar:defaultValue];
}

- (char)getByteWithNSString:(NSString *)key {
  return [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) getByteWithNSString:key];
}

- (IOSByteArray *)getByteArrayWithNSString:(NSString *)key {
  return [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) getByteArrayWithNSString:key];
}

- (unichar)getCharWithNSString:(NSString *)key
                   withUnichar:(unichar)defaultValue {
  return [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) getCharWithNSString:key withUnichar:defaultValue];
}

- (unichar)getCharWithNSString:(NSString *)key {
  return [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) getCharWithNSString:key];
}

- (IOSCharArray *)getCharArrayWithNSString:(NSString *)key {
  return [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) getCharArrayWithNSString:key];
}

- (id<JavaLangCharSequence>)getCharSequenceWithNSString:(NSString *)key {
  return [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) getCharSequenceWithNSString:key];
}

- (IOSObjectArray *)getCharSequenceArrayWithNSString:(NSString *)key {
  return [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) getCharSequenceArrayWithNSString:key];
}

- (JavaUtilArrayList *)getCharSequenceArrayListWithNSString:(NSString *)key {
  return [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) getCharSequenceArrayListWithNSString:key];
}

- (double)getDoubleWithNSString:(NSString *)key
                     withDouble:(double)defaultValue {
  return [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) getDoubleWithNSString:key withDouble:defaultValue];
}

- (double)getDoubleWithNSString:(NSString *)key {
  return [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) getDoubleWithNSString:key];
}

- (IOSDoubleArray *)getDoubleArrayWithNSString:(NSString *)key {
  return [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) getDoubleArrayWithNSString:key];
}

- (float)getFloatWithNSString:(NSString *)key
                    withFloat:(float)defaultValue {
  return [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) getFloatWithNSString:key withFloat:defaultValue];
}

- (float)getFloatWithNSString:(NSString *)key {
  return [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) getFloatWithNSString:key];
}

- (IOSFloatArray *)getFloatArrayWithNSString:(NSString *)key {
  return [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) getFloatArrayWithNSString:key];
}

- (int)getIntWithNSString:(NSString *)key
                  withInt:(int)defaultValue {
  return [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) getIntWithNSString:key withInt:defaultValue];
}

- (int)getIntWithNSString:(NSString *)key {
  return [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) getIntWithNSString:key];
}

- (IOSIntArray *)getIntArrayWithNSString:(NSString *)key {
  return [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) getIntArrayWithNSString:key];
}

- (JavaUtilArrayList *)getIntegerArrayListWithNSString:(NSString *)key {
  return [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) getIntegerArrayListWithNSString:key];
}

- (long long int)getLongWithNSString:(NSString *)key
                         withLongInt:(long long int)defaultValue {
  return [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) getLongWithNSString:key withLongInt:defaultValue];
}

- (long long int)getLongWithNSString:(NSString *)key {
  return [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) getLongWithNSString:key];
}

- (IOSLongArray *)getLongArrayWithNSString:(NSString *)key {
  return [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) getLongArrayWithNSString:key];
}

- (id<JavaIoSerializable>)getSerializableWithNSString:(NSString *)key {
  return [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) getSerializableWithNSString:key];
}

- (short int)getShortWithNSString:(NSString *)key
                     withShortInt:(short int)defaultValue {
  return [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) getShortWithNSString:key withShortInt:defaultValue];
}

- (short int)getShortWithNSString:(NSString *)key {
  return [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) getShortWithNSString:key];
}

- (IOSShortArray *)getShortArrayWithNSString:(NSString *)key {
  return [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) getShortArrayWithNSString:key];
}

- (NSString *)getStringWithNSString:(NSString *)key {
  return [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) getStringWithNSString:key];
}

- (IOSObjectArray *)getStringArrayWithNSString:(NSString *)key {
  return [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) getStringArrayWithNSString:key];
}

- (JavaUtilArrayList *)getStringArrayListWithNSString:(NSString *)key {
  return [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) getStringArrayListWithNSString:key];
}

- (BOOL)hasFileDescriptors {
  return [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) hasFileDescriptors];
}

- (NSUInteger)hash {
  return [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) hash];
}

- (BOOL)isEmpty {
  return [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) isEmpty];
}

- (id<JavaUtilSet>)keySet {
  return [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) keySet];
}

- (void)putBooleanWithNSString:(NSString *)key
                      withBOOL:(BOOL)value {
  [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) putBooleanWithNSString:key withBOOL:value];
}

- (void)putBooleanArrayWithNSString:(NSString *)key
           withJavaLangBooleanArray:(IOSBooleanArray *)value {
  [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) putBooleanArrayWithNSString:key withJavaLangBooleanArray:value];
}

- (void)putByteWithNSString:(NSString *)key
                   withChar:(char)value {
  [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) putByteWithNSString:key withChar:value];
}

- (void)putByteArrayWithNSString:(NSString *)key
           withJavaLangByteArray:(IOSByteArray *)value {
  [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) putByteArrayWithNSString:key withJavaLangByteArray:value];
}

- (void)putCharWithNSString:(NSString *)key
                withUnichar:(unichar)value {
  [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) putCharWithNSString:key withUnichar:value];
}

- (void)putCharArrayWithNSString:(NSString *)key
      withJavaLangCharacterArray:(IOSCharArray *)value {
  [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) putCharArrayWithNSString:key withJavaLangCharacterArray:value];
}

- (void)putCharSequenceWithNSString:(NSString *)key
           withJavaLangCharSequence:(id<JavaLangCharSequence>)value {
  [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) putCharSequenceWithNSString:key withJavaLangCharSequence:value];
}

- (void)putCharSequenceArrayWithNSString:(NSString *)key
           withJavaLangCharSequenceArray:(IOSObjectArray *)value {
  [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) putCharSequenceArrayWithNSString:key withJavaLangCharSequenceArray:value];
}

- (void)putCharSequenceArrayListWithNSString:(NSString *)key
                       withJavaUtilArrayList:(JavaUtilArrayList *)value {
  [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) putCharSequenceArrayListWithNSString:key withJavaUtilArrayList:value];
}

- (void)putDoubleWithNSString:(NSString *)key
                   withDouble:(double)value {
  [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) putDoubleWithNSString:key withDouble:value];
}

- (void)putDoubleArrayWithNSString:(NSString *)key
           withJavaLangDoubleArray:(IOSDoubleArray *)value {
  [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) putDoubleArrayWithNSString:key withJavaLangDoubleArray:value];
}

- (void)putFloatWithNSString:(NSString *)key
                   withFloat:(float)value {
  [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) putFloatWithNSString:key withFloat:value];
}

- (void)putFloatArrayWithNSString:(NSString *)key
           withJavaLangFloatArray:(IOSFloatArray *)value {
  [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) putFloatArrayWithNSString:key withJavaLangFloatArray:value];
}

- (void)putIntWithNSString:(NSString *)key
                   withInt:(int)value {
  [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) putIntWithNSString:key withInt:value];
}

- (void)putIntArrayWithNSString:(NSString *)key
       withJavaLangIntegerArray:(IOSIntArray *)value {
  [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) putIntArrayWithNSString:key withJavaLangIntegerArray:value];
}

- (void)putIntegerArrayListWithNSString:(NSString *)key
                  withJavaUtilArrayList:(JavaUtilArrayList *)value {
  [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) putIntegerArrayListWithNSString:key withJavaUtilArrayList:value];
}

- (void)putLongWithNSString:(NSString *)key
                withLongInt:(long long int)value {
  [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) putLongWithNSString:key withLongInt:value];
}

- (void)putLongArrayWithNSString:(NSString *)key
           withJavaLangLongArray:(IOSLongArray *)value {
  [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) putLongArrayWithNSString:key withJavaLangLongArray:value];
}

- (void)putSerializableWithNSString:(NSString *)key
             withJavaIoSerializable:(id<JavaIoSerializable>)value {
  [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) putSerializableWithNSString:key withJavaIoSerializable:value];
}

- (void)putShortWithNSString:(NSString *)key
                withShortInt:(short int)value {
  [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) putShortWithNSString:key withShortInt:value];
}

- (void)putShortArrayWithNSString:(NSString *)key
           withJavaLangShortArray:(IOSShortArray *)value {
  [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) putShortArrayWithNSString:key withJavaLangShortArray:value];
}

- (void)putStringWithNSString:(NSString *)key
                 withNSString:(NSString *)value {
  [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) putStringWithNSString:key withNSString:value];
}

- (void)putStringArrayWithNSString:(NSString *)key
                 withNSStringArray:(IOSObjectArray *)value {
  [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) putStringArrayWithNSString:key withNSStringArray:value];
}

- (void)putStringArrayListWithNSString:(NSString *)key
                 withJavaUtilArrayList:(JavaUtilArrayList *)value {
  [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) putStringArrayListWithNSString:key withJavaUtilArrayList:value];
}

- (void)removeWithNSString:(NSString *)key {
  [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) removeWithNSString:key];
}

- (void)setClassLoaderWithJavaLangClassLoader:(JavaLangClassLoader *)loader {
  [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) setClassLoaderWithJavaLangClassLoader:loader];
}

- (int)size {
  return [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) size];
}

- (NSString *)description {
  return [((ComAdironBusmeIntegrationArguments *) NIL_CHK(delegate_)) description];
}

- (id)init {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&delegate_, [[[ComAdironBusmeIntegrationArguments alloc] init] autorelease]);
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&delegate_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ComAdironBusmePlatformArguments *typedCopy = (ComAdironBusmePlatformArguments *) copy;
  typedCopy.delegate = delegate_;
}

@end

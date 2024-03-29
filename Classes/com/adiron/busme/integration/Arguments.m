//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/src/main/java/com/adiron/busme/integration/Arguments.java
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

@implementation ComAdironBusmeIntegrationArguments

- (ComAdironBusmePlatformArguments *)delegate {
  return delegate_;
}
- (void)setDelegate:(ComAdironBusmePlatformArguments *)delegate {
  JreOperatorRetainedAssign(&delegate_, delegate);
}
@synthesize delegate = delegate_;

- (ComAdironBusmeIntegrationArguments *)getIntegration {
  return [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) getIntegration];
}

- (void)clear {
  [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) clear];
}

- (BOOL)containsKeyWithNSString:(NSString *)key {
  return [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) containsKeyWithNSString:key];
}

- (int)describeContents {
  return [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) describeContents];
}

- (BOOL)isEqual:(id)o {
  return [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) isEqual:o];
}

- (id)getWithNSString:(NSString *)key {
  return [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) getWithNSString:key];
}

- (BOOL)getBooleanWithNSString:(NSString *)key
                      withBOOL:(BOOL)defaultValue {
  return [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) getBooleanWithNSString:key withBOOL:defaultValue];
}

- (BOOL)getBooleanWithNSString:(NSString *)key {
  return [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) getBooleanWithNSString:key];
}

- (IOSBooleanArray *)getBooleanArrayWithNSString:(NSString *)key {
  return [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) getBooleanArrayWithNSString:key];
}

- (JavaLangByte *)getByteWithNSString:(NSString *)key
                             withChar:(char)defaultValue {
  return [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) getByteWithNSString:key withChar:defaultValue];
}

- (char)getByteWithNSString:(NSString *)key {
  return [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) getByteWithNSString:key];
}

- (IOSByteArray *)getByteArrayWithNSString:(NSString *)key {
  return [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) getByteArrayWithNSString:key];
}

- (unichar)getCharWithNSString:(NSString *)key
                   withUnichar:(unichar)defaultValue {
  return [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) getCharWithNSString:key withUnichar:defaultValue];
}

- (unichar)getCharWithNSString:(NSString *)key {
  return [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) getCharWithNSString:key];
}

- (IOSCharArray *)getCharArrayWithNSString:(NSString *)key {
  return [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) getCharArrayWithNSString:key];
}

- (id<JavaLangCharSequence>)getCharSequenceWithNSString:(NSString *)key {
  return [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) getCharSequenceWithNSString:key];
}

- (IOSObjectArray *)getCharSequenceArrayWithNSString:(NSString *)key {
  return [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) getCharSequenceArrayWithNSString:key];
}

- (JavaUtilArrayList *)getCharSequenceArrayListWithNSString:(NSString *)key {
  return [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) getCharSequenceArrayListWithNSString:key];
}

- (double)getDoubleWithNSString:(NSString *)key
                     withDouble:(double)defaultValue {
  return [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) getDoubleWithNSString:key withDouble:defaultValue];
}

- (double)getDoubleWithNSString:(NSString *)key {
  return [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) getDoubleWithNSString:key];
}

- (IOSDoubleArray *)getDoubleArrayWithNSString:(NSString *)key {
  return [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) getDoubleArrayWithNSString:key];
}

- (float)getFloatWithNSString:(NSString *)key
                    withFloat:(float)defaultValue {
  return [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) getFloatWithNSString:key withFloat:defaultValue];
}

- (float)getFloatWithNSString:(NSString *)key {
  return [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) getFloatWithNSString:key];
}

- (IOSFloatArray *)getFloatArrayWithNSString:(NSString *)key {
  return [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) getFloatArrayWithNSString:key];
}

- (int)getIntWithNSString:(NSString *)key
                  withInt:(int)defaultValue {
  return [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) getIntWithNSString:key withInt:defaultValue];
}

- (int)getIntWithNSString:(NSString *)key {
  return [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) getIntWithNSString:key];
}

- (IOSIntArray *)getIntArrayWithNSString:(NSString *)key {
  return [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) getIntArrayWithNSString:key];
}

- (JavaUtilArrayList *)getIntegerArrayListWithNSString:(NSString *)key {
  return [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) getIntegerArrayListWithNSString:key];
}

- (long long int)getLongWithNSString:(NSString *)key
                         withLongInt:(long long int)defaultValue {
  return [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) getLongWithNSString:key withLongInt:defaultValue];
}

- (long long int)getLongWithNSString:(NSString *)key {
  return [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) getLongWithNSString:key];
}

- (IOSLongArray *)getLongArrayWithNSString:(NSString *)key {
  return [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) getLongArrayWithNSString:key];
}

- (id<JavaIoSerializable>)getSerializableWithNSString:(NSString *)key {
  return [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) getSerializableWithNSString:key];
}

- (short int)getShortWithNSString:(NSString *)key
                     withShortInt:(short int)defaultValue {
  return [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) getShortWithNSString:key withShortInt:defaultValue];
}

- (short int)getShortWithNSString:(NSString *)key {
  return [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) getShortWithNSString:key];
}

- (IOSShortArray *)getShortArrayWithNSString:(NSString *)key {
  return [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) getShortArrayWithNSString:key];
}

- (NSString *)getStringWithNSString:(NSString *)key {
  return [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) getStringWithNSString:key];
}

- (IOSObjectArray *)getStringArrayWithNSString:(NSString *)key {
  return [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) getStringArrayWithNSString:key];
}

- (JavaUtilArrayList *)getStringArrayListWithNSString:(NSString *)key {
  return [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) getStringArrayListWithNSString:key];
}

- (BOOL)hasFileDescriptors {
  return [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) hasFileDescriptors];
}

- (NSUInteger)hash {
  return [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) hash];
}

- (BOOL)isEmpty {
  return [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) isEmpty];
}

- (id<JavaUtilSet>)keySet {
  return [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) keySet];
}

- (void)putBooleanWithNSString:(NSString *)key
                      withBOOL:(BOOL)value {
  [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) putBooleanWithNSString:key withBOOL:value];
}

- (void)putBooleanArrayWithNSString:(NSString *)key
           withJavaLangBooleanArray:(IOSBooleanArray *)value {
  [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) putBooleanArrayWithNSString:key withJavaLangBooleanArray:value];
}

- (void)putByteWithNSString:(NSString *)key
                   withChar:(char)value {
  [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) putByteWithNSString:key withChar:value];
}

- (void)putByteArrayWithNSString:(NSString *)key
           withJavaLangByteArray:(IOSByteArray *)value {
  [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) putByteArrayWithNSString:key withJavaLangByteArray:value];
}

- (void)putCharWithNSString:(NSString *)key
                withUnichar:(unichar)value {
  [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) putCharWithNSString:key withUnichar:value];
}

- (void)putCharArrayWithNSString:(NSString *)key
      withJavaLangCharacterArray:(IOSCharArray *)value {
  [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) putCharArrayWithNSString:key withJavaLangCharacterArray:value];
}

- (void)putCharSequenceWithNSString:(NSString *)key
           withJavaLangCharSequence:(id<JavaLangCharSequence>)value {
  [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) putCharSequenceWithNSString:key withJavaLangCharSequence:value];
}

- (void)putCharSequenceArrayWithNSString:(NSString *)key
           withJavaLangCharSequenceArray:(IOSObjectArray *)value {
  [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) putCharSequenceArrayWithNSString:key withJavaLangCharSequenceArray:value];
}

- (void)putCharSequenceArrayListWithNSString:(NSString *)key
                       withJavaUtilArrayList:(JavaUtilArrayList *)value {
  [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) putCharSequenceArrayListWithNSString:key withJavaUtilArrayList:value];
}

- (void)putDoubleWithNSString:(NSString *)key
                   withDouble:(double)value {
  [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) putDoubleWithNSString:key withDouble:value];
}

- (void)putDoubleArrayWithNSString:(NSString *)key
           withJavaLangDoubleArray:(IOSDoubleArray *)value {
  [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) putDoubleArrayWithNSString:key withJavaLangDoubleArray:value];
}

- (void)putFloatWithNSString:(NSString *)key
                   withFloat:(float)value {
  [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) putFloatWithNSString:key withFloat:value];
}

- (void)putFloatArrayWithNSString:(NSString *)key
           withJavaLangFloatArray:(IOSFloatArray *)value {
  [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) putFloatArrayWithNSString:key withJavaLangFloatArray:value];
}

- (void)putIntWithNSString:(NSString *)key
                   withInt:(int)value {
  [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) putIntWithNSString:key withInt:value];
}

- (void)putIntArrayWithNSString:(NSString *)key
       withJavaLangIntegerArray:(IOSIntArray *)value {
  [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) putIntArrayWithNSString:key withJavaLangIntegerArray:value];
}

- (void)putIntegerArrayListWithNSString:(NSString *)key
                  withJavaUtilArrayList:(JavaUtilArrayList *)value {
  [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) putIntegerArrayListWithNSString:key withJavaUtilArrayList:value];
}

- (void)putLongWithNSString:(NSString *)key
                withLongInt:(long long int)value {
  [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) putLongWithNSString:key withLongInt:value];
}

- (void)putLongArrayWithNSString:(NSString *)key
           withJavaLangLongArray:(IOSLongArray *)value {
  [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) putLongArrayWithNSString:key withJavaLangLongArray:value];
}

- (void)putSerializableWithNSString:(NSString *)key
             withJavaIoSerializable:(id<JavaIoSerializable>)value {
  [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) putSerializableWithNSString:key withJavaIoSerializable:value];
}

- (void)putShortWithNSString:(NSString *)key
                withShortInt:(short int)value {
  [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) putShortWithNSString:key withShortInt:value];
}

- (void)putShortArrayWithNSString:(NSString *)key
           withJavaLangShortArray:(IOSShortArray *)value {
  [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) putShortArrayWithNSString:key withJavaLangShortArray:value];
}

- (void)putStringWithNSString:(NSString *)key
                 withNSString:(NSString *)value {
  [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) putStringWithNSString:key withNSString:value];
}

- (void)putStringArrayWithNSString:(NSString *)key
                 withNSStringArray:(IOSObjectArray *)value {
  [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) putStringArrayWithNSString:key withNSStringArray:value];
}

- (void)putStringArrayListWithNSString:(NSString *)key
                 withJavaUtilArrayList:(JavaUtilArrayList *)value {
  [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) putStringArrayListWithNSString:key withJavaUtilArrayList:value];
}

- (void)removeWithNSString:(NSString *)key {
  [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) removeWithNSString:key];
}

- (void)setClassLoaderWithJavaLangClassLoader:(JavaLangClassLoader *)loader {
  [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) setClassLoaderWithJavaLangClassLoader:loader];
}

- (int)size {
  return [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) size];
}

- (NSString *)description {
  return [((ComAdironBusmePlatformArguments *) NIL_CHK(delegate_)) description];
}

- (id)init {
  return [super init];
}

- (void)dealloc {
  JreOperatorRetainedAssign(&delegate_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ComAdironBusmeIntegrationArguments *typedCopy = (ComAdironBusmeIntegrationArguments *) copy;
  typedCopy.delegate = delegate_;
}

@end

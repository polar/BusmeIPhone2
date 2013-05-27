//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/src/main/java/com/adiron/busme/platform/MessageStore.java
//
//  Created by polar on 5/25/13.
//

#import "IOSClass.h"
#import "IOSObjectArray.h"
#import "com/adiron/busme/api/MasterMessage.h"
#import "com/adiron/busme/platform/Log.h"
#import "com/adiron/busme/platform/MessageStore.h"
#import "java/lang/Boolean.h"
#import "java/util/ArrayList.h"
#import "java/util/Collection.h"
#import "java/util/Date.h"
#import "java/util/HashMap.h"
#import "java/util/Iterator.h"
#import "java/util/List.h"
#import "java/util/Map.h"
#import "java/util/Set.h"

@implementation ComAdironBusmePlatformMessageStore

static NSString * ComAdironBusmePlatformMessageStore_LOGTAG_;

- (id<JavaUtilMap>)seenMessages {
  return seenMessages_;
}
- (void)setSeenMessages:(id<JavaUtilMap>)seenMessages {
  JreOperatorRetainedAssign(&seenMessages_, seenMessages);
}
@synthesize seenMessages = seenMessages_;
- (id<JavaUtilMap>)messages {
  return messages_;
}
- (void)setMessages:(id<JavaUtilMap>)messages {
  JreOperatorRetainedAssign(&messages_, messages);
}
@synthesize messages = messages_;

+ (NSString *)LOGTAG {
  return ComAdironBusmePlatformMessageStore_LOGTAG_;
}

- (id)init {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&seenMessages_, [[[JavaUtilHashMap alloc] init] autorelease]);
    JreOperatorRetainedAssign(&messages_, [[[JavaUtilHashMap alloc] init] autorelease]);
    [ComAdironBusmePlatformLog dWithNSString:ComAdironBusmePlatformMessageStore_LOGTAG_ withNSString:[NSString stringWithFormat:@"MessageStore Creatiog%@", seenMessages_]];
  }
  return self;
}

- (void)isNowSeenWithComAdironBusmeApiMasterMessage:(ComAdironBusmeApiMasterMessage *)msg {
  [ComAdironBusmePlatformLog dWithNSString:ComAdironBusmePlatformMessageStore_LOGTAG_ withNSString:[NSString stringWithFormat:@"isNowSeen: %@ version %qi", [((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) getId], [((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) getVersion]]];
  ComAdironBusmeApiMasterMessage *m1 = ((ComAdironBusmeApiMasterMessage *) [((id<JavaUtilMap>) NIL_CHK(messages_)) getWithId:[((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) getId]]);
  if (m1 != nil) {
    [m1 setSeenWithBOOL:YES];
    [((id<JavaUtilMap>) NIL_CHK(messages_)) removeWithId:[((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) getId]];
  }
  [((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) setSeenWithBOOL:YES];
  [((id<JavaUtilMap>) NIL_CHK(seenMessages_)) putWithId:[((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) getId] withId:[[[ComAdironBusmePlatformMessageStore_SeenMessage alloc] initWithComAdironBusmePlatformMessageStore:self withNSString:[((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) getId] withLongInt:[((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) getVersion]] autorelease]];
}

- (void)cleanWithJavaUtilDate:(JavaUtilDate *)time {
  {
    id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [((id<JavaUtilCollection>) [((id<JavaUtilMap>) NIL_CHK(messages_)) values]) iterator]);
    while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
      ComAdironBusmeApiMasterMessage *msg = ((ComAdironBusmeApiMasterMessage *) [((id<JavaUtilIterator>) NIL_CHK(iter__)) next]);
      if ([((JavaUtilDate *) NIL_CHK(time)) getTime] > [[((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) getExpiryTime] getTime]) {
        [((id<JavaUtilMap>) NIL_CHK(seenMessages_)) removeWithId:[((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) getId]];
        [((id<JavaUtilMap>) NIL_CHK(messages_)) removeWithId:msg];
      }
    }
  }
}

- (id<JavaUtilList>)getSeenMessages {
  id<JavaUtilList> ids = [[[JavaUtilArrayList alloc] initWithInt:[((id<JavaUtilMap>) NIL_CHK(seenMessages_)) size]] autorelease];
  [((id<JavaUtilList>) NIL_CHK(ids)) addAllWithJavaUtilCollection:((id<JavaUtilSet>) [((id<JavaUtilMap>) NIL_CHK(seenMessages_)) keySet])];
  return ids;
}

- (void)reset {
  JreOperatorRetainedAssign(&seenMessages_, [[[JavaUtilHashMap alloc] init] autorelease]);
}

- (void)storeRemindedMessageWithComAdironBusmeApiMasterMessage:(ComAdironBusmeApiMasterMessage *)msg {
  [((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) resetRemindTimeWithJavaUtilDate:[[[JavaUtilDate alloc] init] autorelease]];
  [((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) setSeenWithBOOL:NO];
  [((id<JavaUtilMap>) NIL_CHK(seenMessages_)) removeWithId:[((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) getId]];
  [((id<JavaUtilMap>) NIL_CHK(messages_)) putWithId:[((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) getId] withId:msg];
}

- (ComAdironBusmeApiMasterMessage *)retrieveRemindedMessageWithNSString:(NSString *)id_ {
  return ((ComAdironBusmeApiMasterMessage *) [((id<JavaUtilMap>) NIL_CHK(messages_)) getWithId:id_]);
}

- (ComAdironBusmeApiMasterMessage *)retrieveRemindedMessageWithNSString:(NSString *)id_
                                                       withJavaUtilDate:(JavaUtilDate *)time {
  ComAdironBusmeApiMasterMessage *msg = ((ComAdironBusmeApiMasterMessage *) [((id<JavaUtilMap>) NIL_CHK(messages_)) getWithId:id_]);
  if (msg != nil) {
    [ComAdironBusmePlatformLog dWithNSString:ComAdironBusmePlatformMessageStore_LOGTAG_ withNSString:[NSString stringWithFormat:@"retrieveRemindedMessage(%@) seen %@ time %@ expiry %@ remind %@" , [msg getId], [msg isSeen], time, [msg getExpiryTime], [msg getRemindTime], nil]];
    if (![msg isSeen] && [((JavaUtilDate *) NIL_CHK(time)) getTime] <= [[msg getExpiryTime] getTime]) {
      if ([((JavaUtilDate *) NIL_CHK(time)) getTime] >= [[msg getRemindTime] getTime]) {
        return msg;
      }
    }
  }
  return nil;
}

- (id<JavaUtilList>)retrieveRemindedMessagesWithJavaUtilDate:(JavaUtilDate *)time {
  id<JavaUtilList> msgs = [[[JavaUtilArrayList alloc] init] autorelease];
  {
    id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [((id<JavaUtilCollection>) [((id<JavaUtilMap>) NIL_CHK(messages_)) values]) iterator]);
    while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
      ComAdironBusmeApiMasterMessage *msg = ((ComAdironBusmeApiMasterMessage *) [((id<JavaUtilIterator>) NIL_CHK(iter__)) next]);
      if (![((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) isSeen] && [((JavaUtilDate *) NIL_CHK(time)) getTime] <= [[((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) getExpiryTime] getTime]) {
        if ([((JavaUtilDate *) NIL_CHK(time)) getTime] >= [[((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) getRemindTime] getTime]) {
          [((id<JavaUtilList>) NIL_CHK(msgs)) addWithId:msg];
        }
      }
    }
  }
  return msgs;
}

- (BOOL)removeMessageWithNSString:(NSString *)id_ {
  ComAdironBusmeApiMasterMessage *msg = ((ComAdironBusmeApiMasterMessage *) [((id<JavaUtilMap>) NIL_CHK(messages_)) getWithId:id_]);
  if (msg != nil) {
    [((id<JavaUtilMap>) NIL_CHK(messages_)) removeWithId:msg];
  }
  return msg != nil;
}

- (BOOL)isSeenWithNSString:(NSString *)id_ {
  return [((id<JavaUtilMap>) NIL_CHK(seenMessages_)) containsKeyWithId:id_];
}

- (BOOL)neverSeenWithNSString:(NSString *)id_ {
  return ![((id<JavaUtilMap>) NIL_CHK(seenMessages_)) containsKeyWithId:id_] && ![((id<JavaUtilMap>) NIL_CHK(messages_)) containsKeyWithId:id_];
}

- (BOOL)shouldBeShownWithNSString:(NSString *)id_
                 withJavaUtilDate:(JavaUtilDate *)time {
  return [self neverSeenWithNSString:id_] || nil != [self retrieveRemindedMessageWithNSString:id_ withJavaUtilDate:time];
}

- (BOOL)shouldBeShownWithComAdironBusmeApiMasterMessage:(ComAdironBusmeApiMasterMessage *)msg
                                       withJavaUtilDate:(JavaUtilDate *)time {
  [ComAdironBusmePlatformLog dWithNSString:ComAdironBusmePlatformMessageStore_LOGTAG_ withNSString:[NSString stringWithFormat:@"shouldBeShown %@ version %qi %@", [((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) getId], [((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) getVersion], [((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) getTitle]]];
  if ([[((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) getExpiryTime] getTime] >= [((JavaUtilDate *) NIL_CHK(time)) getTime]) {
    [ComAdironBusmePlatformLog dWithNSString:ComAdironBusmePlatformMessageStore_LOGTAG_ withNSString:[NSString stringWithFormat:@"shouldBeShown %@ version %qi never seen %@", [((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) getId], [((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) getVersion], [JavaLangBoolean toStringWithBOOL:[self neverSeenWithNSString:[((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) getId]]]]];
    [ComAdironBusmePlatformLog dWithNSString:ComAdironBusmePlatformMessageStore_LOGTAG_ withNSString:[NSString stringWithFormat:@"shouldBeShown %@ version %qi is seen %@", [((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) getId], [((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) getVersion], [JavaLangBoolean toStringWithBOOL:[self isSeenWithNSString:[((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) getId]]]]];
    if ([self isSeenWithNSString:[((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) getId]]) {
      [ComAdironBusmePlatformLog dWithNSString:ComAdironBusmePlatformMessageStore_LOGTAG_ withNSString:[NSString stringWithFormat:@"shouldBeShown %@ version %qi seen version %qi", [((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) getId], [((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) getVersion], ((ComAdironBusmePlatformMessageStore_SeenMessage *) [((id<JavaUtilMap>) NIL_CHK(seenMessages_)) getWithId:[((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) getId]]).version_]];
    }
    [ComAdironBusmePlatformLog dWithNSString:ComAdironBusmePlatformMessageStore_LOGTAG_ withNSString:[NSString stringWithFormat:@"shouldBeShown %@ version %qi in messages %@", [((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) getId], [((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) getVersion], [JavaLangBoolean toStringWithBOOL:[((id<JavaUtilMap>) NIL_CHK(messages_)) containsKeyWithId:[((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) getId]]]]];
    if ([((id<JavaUtilMap>) NIL_CHK(messages_)) containsKeyWithId:[((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) getId]]) {
      [ComAdironBusmePlatformLog dWithNSString:ComAdironBusmePlatformMessageStore_LOGTAG_ withNSString:[NSString stringWithFormat:@"shouldBeShown %@ version %qi messages version %qi", [((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) getId], [((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) getVersion], [((ComAdironBusmeApiMasterMessage *) [((id<JavaUtilMap>) NIL_CHK(messages_)) getWithId:[((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) getId]]) getVersion]]];
    }
    return [self neverSeenWithNSString:[((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) getId]] || [self isSeenWithNSString:[((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) getId]] && ((ComAdironBusmePlatformMessageStore_SeenMessage *) [((id<JavaUtilMap>) NIL_CHK(seenMessages_)) getWithId:[((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) getId]]).version_ < [((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) getVersion] || [((id<JavaUtilMap>) NIL_CHK(messages_)) containsKeyWithId:[((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) getId]] && [((ComAdironBusmeApiMasterMessage *) [((id<JavaUtilMap>) NIL_CHK(messages_)) getWithId:[((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) getId]]) getVersion] < [((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) getVersion] || nil != [self retrieveRemindedMessageWithNSString:[((ComAdironBusmeApiMasterMessage *) NIL_CHK(msg)) getId] withJavaUtilDate:time];
  }
  else {
    return NO;
  }
}

- (void)preSerialize {
  @synchronized(self) {
    {
      [self cleanWithJavaUtilDate:[[[JavaUtilDate alloc] init] autorelease]];
    }
  }
}

- (void)postSerialize {
  @synchronized(self) {
    {
      [self cleanWithJavaUtilDate:[[[JavaUtilDate alloc] init] autorelease]];
    }
  }
}

+ (void)initialize {
  if (self == [ComAdironBusmePlatformMessageStore class]) {
    JreOperatorRetainedAssign(&ComAdironBusmePlatformMessageStore_LOGTAG_, [[IOSClass classWithClass:[ComAdironBusmePlatformMessageStore class]] getName]);
  }
}

- (void)dealloc {
  JreOperatorRetainedAssign(&messages_, nil);
  JreOperatorRetainedAssign(&seenMessages_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ComAdironBusmePlatformMessageStore *typedCopy = (ComAdironBusmePlatformMessageStore *) copy;
  typedCopy.seenMessages = seenMessages_;
  typedCopy.messages = messages_;
}

@end
@implementation ComAdironBusmePlatformMessageStore_SeenMessage

- (NSString *)id_ {
  return id__;
}
- (void)setId_:(NSString *)id_ {
  JreOperatorRetainedAssign(&id__, id_);
}
@synthesize id_ = id__;
@synthesize version_ = version__;

- (id)initWithComAdironBusmePlatformMessageStore:(ComAdironBusmePlatformMessageStore *)outer$
                                    withNSString:(NSString *)id_
                                     withLongInt:(long long int)version_ {
  if ((self = [super init])) {
    self.id_ = id_;
    self.version_ = version_;
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&id__, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ComAdironBusmePlatformMessageStore_SeenMessage *typedCopy = (ComAdironBusmePlatformMessageStore_SeenMessage *) copy;
  typedCopy.id_ = id__;
  typedCopy.version_ = version__;
}

@end

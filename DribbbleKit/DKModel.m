//
//  DKModel.m
//  DribbbleKit
//
//  Created by Min Kim on 8/1/13.
//  Copyright (c) 2013 min. All rights reserved.
//

#import "DKModel.h"

@implementation DKModel

+ (NSDateFormatter *)dateFormatter {
  static dispatch_once_t pred = 0;
  __strong static NSDateFormatter *_dateFormatter = nil;
  dispatch_once(&pred, ^{
    _dateFormatter = [[NSDateFormatter alloc] init];
    _dateFormatter.dateFormat = @"yyyy-MM-dd'T'HH:mm:ss'Z'";
  });
  return _dateFormatter;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
  return @{@"ID" : @"id", @"createdAt" : @"created_at"};
}

+ (NSValueTransformer *)createdAtTransformer {
  return [MTLValueTransformer reversibleTransformerWithForwardBlock:^(NSString *str) {
    return [self.dateFormatter dateFromString:str];
  } reverseBlock:^(NSDate *date) {
    return [self.dateFormatter stringFromDate:date];
  }];
}

@end

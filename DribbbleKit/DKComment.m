//
//  DKComment.m
//  DribbbleKit
//
//  Created by Min Kim on 7/30/13.
//  Copyright (c) 2013 min. All rights reserved.
//

#import "DKComment.h"

@implementation DKComment

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
  
  return [super.JSONKeyPathsByPropertyKey mtl_dictionaryByAddingEntriesFromDictionary:@{
           @"likesCount" : @"likes_count",
           }];
}





@end

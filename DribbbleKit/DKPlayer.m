//
//  DKPlayer.m
//  DribbbleKit
//
//  Created by Min Kim on 7/30/13.
//  Copyright (c) 2013 min. All rights reserved.
//

#import "DKPlayer.h"

@implementation DKPlayer

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
  return
    [super.JSONKeyPathsByPropertyKey mtl_dictionaryByAddingEntriesFromDictionary:@{
      @"URL" : @"url",
      @"avatarURL" : @"avatar_url",
      @"shotsCount" : @"shots_count",
      @"followersCount" : @"followers_count",
      @"followingCount" : @"following_count",
      @"commentsCount" : @"comments_count",
      @"likesCount" : @"likes_count",
      @"reboundsCount" : @"rebounds_count"
     }];
}

+ (NSValueTransformer *)URLJSONTransformer {
  return [NSValueTransformer valueTransformerForName:MTLURLValueTransformerName];
}

+ (NSValueTransformer *)avatarURLJSONTransformer {
  return [NSValueTransformer valueTransformerForName:MTLURLValueTransformerName];
}

@end

//
//  DKShot.m
//  DribbbleKit
//
//  Created by Min Kim on 7/30/13.
//  Copyright (c) 2013 min. All rights reserved.
//

#import "DKShot.h"
#import "DKPlayer.h"

@implementation DKShot

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
  return [super.JSONKeyPathsByPropertyKey mtl_dictionaryByAddingEntriesFromDictionary:@{
           @"URL" : @"url",
           @"shortURL" : @"short_url",
           @"imageURL" : @"image_url",
           @"imageTeaserURL" : @"image_teaser_url",
           @"viewsCount" : @"views_count",
           @"likesCount" : @"likes_count",
           @"commentsCount" : @"comments_count",
           @"reboundsCount" : @"rebounds_count"
           }];
}

+ (NSValueTransformer *)URLJSONTransformer {
  return [NSValueTransformer valueTransformerForName:MTLURLValueTransformerName];
}

+ (NSValueTransformer *)shortURLJSONTransformer {
  return [NSValueTransformer valueTransformerForName:MTLURLValueTransformerName];
}

+ (NSValueTransformer *)imageURLJSONTransformer {
  return [NSValueTransformer valueTransformerForName:MTLURLValueTransformerName];
}

+ (NSValueTransformer *)imageTeaserURLJSONTransformer {
  return [NSValueTransformer valueTransformerForName:MTLURLValueTransformerName];
}

+ (NSValueTransformer *)playerJSONTransformer {
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[DKPlayer class]];
}

@end

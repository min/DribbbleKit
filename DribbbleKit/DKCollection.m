//
//  DKCollection.m
//  DribbbleKit
//
//  Created by Min Kim on 8/1/13.
//  Copyright (c) 2013 min. All rights reserved.
//

#import "DKCollection.h"
#import "DKPlayer.h"
#import "DKShot.h"
#import "DKComment.h"

@interface DKCollection()

@property(nonatomic,strong,readwrite) NSArray *items;

@end

@implementation DKCollection

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
  return @{@"limit" : @"per_page"};
}

+ (NSValueTransformer *)shotsJSONTransformer {
  return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:DKShot.class];
}

+ (NSValueTransformer *)commentsJSONTransformer {
  return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:DKComment.class];
}

+ (NSValueTransformer *)playersJSONTransformer {
  return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:DKPlayer.class];
}

@end

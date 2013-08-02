//
//  DKCollection.h
//  DribbbleKit
//
//  Created by Min Kim on 8/1/13.
//  Copyright (c) 2013 min. All rights reserved.
//

#import "Mantle.h"

@interface DKCollection : MTLModel<MTLJSONSerializing>

@property(nonatomic,assign,readonly) NSUInteger page;
@property(nonatomic,assign,readonly) NSUInteger pages;
@property(nonatomic,assign,readonly) NSUInteger limit;
@property(nonatomic,assign,readonly) NSUInteger total;

@property(nonatomic,strong,readonly) NSArray *shots;
@property(nonatomic,strong,readonly) NSArray *players;
@property(nonatomic,strong,readonly) NSArray *comments;

@end

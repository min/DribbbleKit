//
//  DKModel.h
//  DribbbleKit
//
//  Created by Min Kim on 8/1/13.
//  Copyright (c) 2013 min. All rights reserved.
//

#import "Mantle.h"

@interface DKModel : MTLModel<MTLJSONSerializing>

@property(nonatomic,copy,readonly) NSNumber *ID;
@property(nonatomic,copy,readonly) NSDate *createdAt;

@end

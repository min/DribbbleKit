//
//  DKComment.h
//  DribbbleKit
//
//  Created by Min Kim on 7/30/13.
//  Copyright (c) 2013 min. All rights reserved.
//

#import "DKModel.h"

@interface DKComment : DKModel

@property(nonatomic,copy,readonly) NSString *body;
@property(nonatomic,copy,readonly) NSNumber *likesCount;

@end

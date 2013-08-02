//
//  DKPlayer.h
//  DribbbleKit
//
//  Created by Min Kim on 7/30/13.
//  Copyright (c) 2013 min. All rights reserved.
//

#import "DKModel.h"

@interface DKPlayer : DKModel

@property(nonatomic,copy,readwrite) NSString *name;
@property(nonatomic,copy,readwrite) NSString *username;
@property(nonatomic,copy,readwrite) NSString *location;
@property(nonatomic,copy,readwrite) NSString *twitterScreenName;
@property(nonatomic,copy,readwrite) NSURL    *URL;
@property(nonatomic,copy,readwrite) NSURL    *avatarURL;
@property(nonatomic,copy,readwrite) NSDate   *createdAt;

@property(nonatomic,copy,readwrite) NSNumber *shotsCount;
@property(nonatomic,copy,readwrite) NSNumber *followersCount;
@property(nonatomic,copy,readwrite) NSNumber *followingCount;
@property(nonatomic,copy,readwrite) NSNumber *commentsCount;
@property(nonatomic,copy,readwrite) NSNumber *likesCount;
@property(nonatomic,copy,readwrite) NSNumber *reboundsCount;

@end

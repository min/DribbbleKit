//
//  DKShot.h
//  DribbbleKit
//
//  Created by Min Kim on 7/30/13.
//  Copyright (c) 2013 min. All rights reserved.
//

#import "DKModel.h"

@class DKPlayer;

@interface DKShot : DKModel

@property(nonatomic,copy,readwrite) NSString *title;
@property(nonatomic,copy,readwrite) NSURL    *URL;
@property(nonatomic,copy,readwrite) NSURL    *shortURL;
@property(nonatomic,copy,readwrite) NSURL    *imageURL;
@property(nonatomic,copy,readwrite) NSURL    *imageTeaserURL;
@property(nonatomic,copy,readwrite) NSNumber *width;
@property(nonatomic,copy,readwrite) NSNumber *height;
@property(nonatomic,copy,readwrite) NSNumber *viewsCount;
@property(nonatomic,copy,readwrite) NSNumber *likesCount;
@property(nonatomic,copy,readwrite) NSNumber *commentsCount;
@property(nonatomic,copy,readwrite) NSNumber *reboundsCount;
@property(nonatomic,copy,readwrite) DKPlayer *player;

@end

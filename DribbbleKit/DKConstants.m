//
//  DKConstants.m
//  DribbbleKit
//
//  Created by Min Kim on 7/31/13.
//  Copyright (c) 2013 min. All rights reserved.
//

#import "DKConstants.h"

// Shots
NSString *const DKConstantsGETShot                 = @"shots/:id";
NSString *const DKConstantsGETShotRebounds         = @"shots/:id/rebounds";
NSString *const DKConstantsGETShotList             = @"shots/:list";
NSString *const DKConstantsGETPlayerShots          = @"players/:id/shots";
NSString *const DKConstantsGETPlayerShotsFollowing = @"players/:id/shots/following";
NSString *const DKConstantsGETPlayerShotsLikes     = @"players/:id/shots/likes";

// Players
NSString *const DKConstantsGETPlayer               = @"players/:id";
NSString *const DKConstantsGETPlayerFollowers      = @"players/:id/followers";
NSString *const DKConstantsGETPlayerFollowing      = @"players/:id/following";
NSString *const DKConstantsGETPlayerDraftees       = @"players/:id/draftees";

// Comments
NSString *const DKConstantsGETShotComments         = @"shots/:id/comments";
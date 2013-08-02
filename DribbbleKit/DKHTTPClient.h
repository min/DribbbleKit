//
//  DKHTTPClient.h
//  DribbbleKit
//
//  Created by Min Kim on 7/30/13.
//  Copyright (c) 2013 min. All rights reserved.
//

#import "AFHTTPClient.h"

typedef void (^DKHTTPSuccessBlock)(id data);
typedef void (^DKHTTPFailureBlock)(NSError *error);

typedef NS_ENUM(NSUInteger, DKShotsType) {
  DKShotsTypeDebuts = 0,
  DKShotsTypeEveryone,
  DKShotsTypePopular
};

@interface DKHTTPClient : AFHTTPClient

+ (instancetype)sharedClient;

+ (void)fetchShotsOfType:(DKShotsType)type success:(DKHTTPSuccessBlock)success failure:(DKHTTPFailureBlock)failure;

+ (void)fetchShotWithID:(NSNumber *)ID success:(DKHTTPSuccessBlock)success failure:(DKHTTPFailureBlock)failure;

+ (void)fetchReboundsForShotID:(NSNumber *)ID success:(DKHTTPSuccessBlock)success failure:(DKHTTPFailureBlock)failure;

+ (void)fetchPlayerWithID:(NSNumber *)ID success:(DKHTTPSuccessBlock)success failure:(DKHTTPFailureBlock)failure;

+ (void)fetchFollowersForPlayerID:(NSNumber *)ID success:(DKHTTPSuccessBlock)success failure:(DKHTTPFailureBlock)failure;

+ (void)fetchFollowingForPlayerID:(NSNumber *)ID success:(DKHTTPSuccessBlock)success failure:(DKHTTPFailureBlock)failure;

+ (void)fetchDrafteesForPlayerID:(NSNumber *)ID success:(DKHTTPSuccessBlock)success failure:(DKHTTPFailureBlock)failure;

+ (void)fetchShotsForPlayerID:(NSNumber *)ID success:(DKHTTPSuccessBlock)success failure:(DKHTTPFailureBlock)failure;

+ (void)fetchFollowingShotsForPlayerID:(NSNumber *)ID success:(DKHTTPSuccessBlock)success failure:(DKHTTPFailureBlock)failure;

+ (void)fetchLikedShotsForPlayerID:(NSNumber *)ID success:(DKHTTPSuccessBlock)success failure:(DKHTTPFailureBlock)failure;

+ (void)fetchCommentsForShotID:(NSNumber *)ID success:(DKHTTPSuccessBlock)success failure:(DKHTTPFailureBlock)failure;

@end

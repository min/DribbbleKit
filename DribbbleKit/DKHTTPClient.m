//
//  DKHTTPClient.m
//  DribbbleKit
//
//  Created by Min Kim on 7/30/13.
//  Copyright (c) 2013 min. All rights reserved.
//

#import "DKHTTPClient.h"
#import "DKConstants.h"
#import "DKPlayer.h"
#import "DKShot.h"
#import "DKCollection.h"
#import "SOCKit.h"
#import "AFNetworking.h"

static inline NSString* DKPath(NSString *path, NSDictionary *parameters) {
  return SOCStringFromStringWithObject(path, parameters);
}

@implementation DKHTTPClient

+ (instancetype)sharedClient {
  static dispatch_once_t pred = 0;
  __strong static id _sharedObject = nil;
  dispatch_once(&pred, ^{
    _sharedObject = [[self alloc] initWithBaseURL:[NSURL URLWithString:@"http://api.dribbble.com/"]];
  });
  return _sharedObject;
}

- (instancetype)initWithBaseURL:(NSURL *)url {
  if (self = [super initWithBaseURL:url]) {
    [self registerHTTPOperationClass:[AFJSONRequestOperation class]];
    [self setDefaultHeader:@"Accept" value:@"application/json"];
    [self setDefaultHeader:@"Accept-Encoding" value:@"gzip"];
    [self setParameterEncoding:AFJSONParameterEncoding];    
  }
  return self;
}

+ (void)fetchPath:(NSString *)path
       parameters:(NSDictionary *)parameters
    resourceClass:(Class)resourceClass
          success:(DKHTTPSuccessBlock)success
          failure:(DKHTTPFailureBlock)failure {
  
  [self.sharedClient getPath:path
                  parameters:parameters
                     success:^(AFHTTPRequestOperation *operation, id responseObject) {
                       if (success) {
                         success([MTLJSONAdapter modelOfClass:resourceClass fromJSONDictionary:responseObject error:nil]);
                       }
                     }
                     failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                       if (failure) {
                         failure(error);
                       }
                     }
   ];
}

+ (void)fetchShotsOfType:(DKShotsType)type success:(DKHTTPSuccessBlock)success failure:(DKHTTPFailureBlock)failure {
  NSArray *types = @[@"debuts", @"popular", @"everyone"];
  
  [self fetchPath:DKPath(DKConstantsGETShotList, @{@"list" : types[type]})
       parameters:nil
    resourceClass:DKCollection.class
          success:success
          failure:failure
   ];
}

+ (void)fetchShotWithID:(NSNumber *)ID success:(DKHTTPSuccessBlock)success failure:(DKHTTPFailureBlock)failure {
  [self fetchPath:DKPath(DKConstantsGETShot, @{@"id" : ID})
       parameters:nil
    resourceClass:DKShot.class
          success:success
          failure:failure
   ];
}

+ (void)fetchReboundsForShotID:(NSNumber *)ID success:(DKHTTPSuccessBlock)success failure:(DKHTTPFailureBlock)failure {
  [self fetchPath:DKPath(DKConstantsGETShotRebounds, @{@"id" : ID})
       parameters:nil
    resourceClass:DKCollection.class
          success:success
          failure:failure
   ];
}

+ (void)fetchPlayerWithID:(NSNumber *)ID success:(DKHTTPSuccessBlock)success failure:(DKHTTPFailureBlock)failure {
  [self fetchPath:DKPath(DKConstantsGETPlayer, @{@"id" : ID})
       parameters:nil
    resourceClass:DKPlayer.class
          success:success
          failure:failure
   ];
}

+ (void)fetchFollowersForPlayerID:(NSNumber *)ID success:(DKHTTPSuccessBlock)success failure:(DKHTTPFailureBlock)failure {
  [self fetchPath:DKPath(DKConstantsGETPlayerFollowers, @{@"id" : ID})
       parameters:nil
    resourceClass:DKCollection.class
          success:success
          failure:failure
   ];
}

+ (void)fetchFollowingForPlayerID:(NSNumber *)ID success:(DKHTTPSuccessBlock)success failure:(DKHTTPFailureBlock)failure {
  [self fetchPath:DKPath(DKConstantsGETPlayerFollowing, @{@"id" : ID})
       parameters:nil
    resourceClass:DKCollection.class
          success:success
          failure:failure
   ];
}

+ (void)fetchDrafteesForPlayerID:(NSNumber *)ID success:(DKHTTPSuccessBlock)success failure:(DKHTTPFailureBlock)failure {
  [self fetchPath:DKPath(DKConstantsGETPlayerDraftees, @{@"id" : ID})
       parameters:nil
    resourceClass:DKCollection.class
          success:success
          failure:failure
   ];
}

+ (void)fetchShotsForPlayerID:(NSNumber *)ID success:(DKHTTPSuccessBlock)success failure:(DKHTTPFailureBlock)failure {
  [self fetchPath:DKPath(DKConstantsGETPlayerShots, @{@"id" : ID})
       parameters:nil
    resourceClass:DKCollection.class
          success:success
          failure:failure
   ];
}

+ (void)fetchFollowingShotsForPlayerID:(NSNumber *)ID success:(DKHTTPSuccessBlock)success failure:(DKHTTPFailureBlock)failure {
  [self fetchPath:DKPath(DKConstantsGETPlayerShotsFollowing, @{@"id" : ID})
       parameters:nil
    resourceClass:DKCollection.class
          success:success
          failure:failure
   ];
}

+ (void)fetchLikedShotsForPlayerID:(NSNumber *)ID success:(DKHTTPSuccessBlock)success failure:(DKHTTPFailureBlock)failure {
  [self fetchPath:DKPath(DKConstantsGETPlayerShotsLikes, @{@"id" : ID})
       parameters:nil
    resourceClass:DKCollection.class
          success:success
          failure:failure
   ];
}

+ (void)fetchCommentsForShotID:(NSNumber *)ID success:(DKHTTPSuccessBlock)success failure:(DKHTTPFailureBlock)failure {
  [self fetchPath:DKPath(DKConstantsGETShotComments, @{@"id" : ID})
       parameters:nil
    resourceClass:DKCollection.class
          success:success
          failure:failure
   ];
}

@end

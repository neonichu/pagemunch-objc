//
//  PageMunch.h
//  PageMunchSDK
//
//  Created by Andrew Yates on 28/06/2013.
//  Copyright (c) 2013 Andrew Yates. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^PMCompletionBlock)(NSDictionary *response, NSError* error);

@interface PageMunch : NSObject {
    NSString *apiKey;
}

@property (nonatomic, retain) NSString *apiKey;

+ (PageMunch *)sharedSDK;
- (void)setAPIKey:(NSString *)pmAPIKey;
+ (void)requestSummaryForURL:(NSURL *)url completion:(PMCompletionBlock)handler;

@end

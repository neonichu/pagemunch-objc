//
//  PageMunch.m
//  PageMunchSDK
//
//  Created by Andrew Yates on 28/06/2013.
//  Copyright (c) 2013 Andrew Yates. All rights reserved.
//

#import "PageMunch.h"

@implementation PageMunch

@synthesize apiKey;

static NSString * const apiURLBase = @"http://api.pagemunch.com/1";


#pragma mark - PageMunch Configuration

static PageMunch *sharedSDK = nil;

+(PageMunch *)sharedSDK {
	@synchronized(self) {
		if (sharedSDK == NULL) {
			sharedSDK = [self alloc];
		}
        (void)[sharedSDK init];
	}
	return(sharedSDK);
}

-(id)init {
	if(self = [super init]){
        if(sharedSDK != self){
            self.apiKey = [sharedSDK apiKey];
        }
	}
	return self;
}

-(void)setAPIKey:(NSString *)pmAPIKey {
	self.apiKey = pmAPIKey;
}


#pragma mark - PageMunch Requests

+ (void)requestSummaryForURL:(NSURL *)url completion:(PMCompletionBlock)handler {
    NSURL *requestURL = [NSURL URLWithString:[NSString stringWithFormat:@"%@/summary.json?key=%@&url=%@", apiURLBase, [sharedSDK apiKey], url]];
    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:requestURL];
    request.HTTPMethod = @"GET";
    
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *body, NSError *requestError) {
        if(requestError){
            handler(nil, requestError);
        } else {
            NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:body options:0 error:nil];
            handler(jsonDictionary, nil);
        }
    }];
}

@end

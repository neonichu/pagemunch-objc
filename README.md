PageMunch Objective-C SDK
==============

An Objective-C SDK for the PageMunch web crawler API

## How To Get Started

###Step 1: Include PageMunch ###

```
#import "PageMunch.h"
```

###Step 2: Configure PageMunch ###

```
[[PageMunch sharedSDK] setAPIKey:@""];
```

###Step 3: Make a request ###

```
[PageMunch requestSummaryForURL:[NSURL URLWithString:@"http://vimeo.com/58893010"] completion:^(NSDictionary *response, NSError *error) {
    NSLog(@"response %@, error %@", response, error);
}];

```
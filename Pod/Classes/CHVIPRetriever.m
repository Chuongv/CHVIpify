//
//  CHVIPRetriever.m
//  CHVIpify
//
//  Created by Chuong Vu on 9/11/15.
//  Copyright (c) 2015 Chuong Vu. All rights reserved.
//

#import "CHVIPRetriever.h"

static NSString *const kURLPath = @"https://api.ipify.org";

@implementation CHVIPRetriever

- (void)getIPAddress:(void(^)(NSString*, NSError *))completion
{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^{

        NSURL *url = [NSURL URLWithString:kURLPath];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        NSURLSession *session = [NSURLSession sharedSession];
        NSURLSessionDataTask *task = [session dataTaskWithRequest:request
                   completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                       NSString *ip = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
                       completion(ip, error);
                   }];
        [task resume];
    });
}

@end

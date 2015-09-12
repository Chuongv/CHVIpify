//
//  CHVIPRetriever.h
//  CHVIpify
//
//  Created by Chuong Vu on 9/11/15.
//  Copyright (c) 2015 Chuong Vu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CHVIPRetriever : NSObject

/**
 * Fetch the IP on the background queue.
 * @param completion The block to execute with the ip.
 */
- (void)getIPAddress:(void(^)(NSString *ip, NSError *error))completion;

@end

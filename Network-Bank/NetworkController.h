//
//  NetworkController.h
//  Network-Bank
//
//  Created by Joshua Howland on 6/18/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetworkController : NSObject

+ (NetworkController *)sharedInstance;

- (UIImage *)imageAtURL:(NSString *)urlString;

@end

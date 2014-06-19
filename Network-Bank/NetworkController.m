//
//  NetworkController.m
//  Network-Bank
//
//  Created by Joshua Howland on 6/18/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "NetworkController.h"

@implementation NetworkController

+ (NetworkController *)sharedInstance  {
    static NetworkController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [NetworkController new];
    });
    return sharedInstance;
}

- (UIImage *)imageAtURL:(NSString *)urlString {

    // NOTE: THIS IS BAD CODE FOR AN IMAGE REQUEST
    
//    NSURLRequest * urlRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:urlString]];
//    NSURLResponse * response = nil;
//    NSError * error = nil;
//    NSData * data = [NSURLConnection sendSynchronousRequest:urlRequest
//                                          returningResponse:&response
//                                                      error:&error];
//    
//    if (error == nil) {
//        return [UIImage imageWithData:data];
//    } else {
        return nil;
//    }
    
}

@end

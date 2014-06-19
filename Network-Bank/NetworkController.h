//
//  NetworkController.h
//  Network-Bank
//
//  Created by Joshua Howland on 6/18/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol NetworkControllerDelegate <NSObject>

- (void)networkDownloadedImage:(UIImage *)image;

@end

@interface NetworkController : NSObject

// Note: You wouldn't want just one delegate for the shared network controller
// You will want to create a single instance of the network controller then for each view controller
@property (nonatomic, assign) id<NetworkControllerDelegate>delegate;

- (UIImage *)imageAtURL:(NSString *)urlString;
- (void)fetchImageAtURL:(NSString *)urlString;

@end

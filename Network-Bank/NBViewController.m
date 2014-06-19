//
//  NBViewController.m
//  Network-Bank
//
//  Created by Joshua Howland on 6/18/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "NBViewController.h"
#import "NetworkController.h"

@interface NBViewController () <NetworkControllerDelegate>

@property (nonatomic, strong) UIImageView *imageView;

@end

@implementation NBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.imageView = [UIImageView new];
    [self.view addSubview:self.imageView];
    
    NetworkController *networkController = [NetworkController new];
    
// Synchronous Request
//    UIImage *image = [networkController imageAtURL:@"http://evbdn.eventbrite.com/s3-s3/eventlogos/92022681/devevent.png"];
//    [self.imageView setImage:image];
//    self.imageView.frame = CGRectMake(0, 64, 320, image.size.height / image.size.width * 320);

    
    
// Asynchronous Request
//    networkController.delegate = self;
//    [networkController fetchImageAtURL:@"http://evbdn.eventbrite.com/s3-s3/eventlogos/92022681/devevent.png"];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)networkDownloadedImage:(UIImage *)image {

    [self.imageView setImage:image];
    self.imageView.frame = CGRectMake(0, 64, 320, image.size.height / image.size.width * 320);

}

@end

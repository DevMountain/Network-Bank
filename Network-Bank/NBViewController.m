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
    
    // TRY THIS LARGE IMAGE: http://www.sexyli.com/wp-content/uploads/2013/05/Green-Snake-Image-Wallpaper.jpg
    // TRY THIS MASSIVE IMAGE: http://imgsv.imaging.nikon.com/lineup/dslr/d7100/img/sample/img_07_l.jpg
    
// Synchronous Request
//    UIImage *image = [networkController imageAtURL:@"http://evbdn.eventbrite.com/s3-s3/eventlogos/92022681/devevent.png"];
//    [self.imageView setImage:image];
//    self.imageView.frame = CGRectMake(0, 64, 320, image.size.height / image.size.width * 320);

    
// Asynchronous Request
    networkController.delegate = self;
    [networkController fetchImageAtURL:@"http://www.sexyli.com/wp-content/uploads/2013/05/Green-Snake-Image-Wallpaper.jpg"];

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

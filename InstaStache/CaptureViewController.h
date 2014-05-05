//
//  CaptureViewController.h
//  InstaStache
//
//  Created by Mark Meyer on 5/1/14.
//  Copyright (c) 2014 Mark Meyer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MobileCoreServices/UTCoreTypes.h>
#import <CoreImage/CoreImage.h>

@interface CaptureViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate, UIGestureRecognizerDelegate>

- (IBAction)cameraTapped:(id)sender;
- (IBAction)drawTapped:(id)sender;
- (IBAction)shareTapped:(id)sender;

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIImageView *imgMainView;

@end

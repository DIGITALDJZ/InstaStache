//
//  CaptureViewController.m
//  InstaStache
//
//  Created by Mark Meyer on 5/1/14.
//  Copyright (c) 2014 Mark Meyer. All rights reserved.
//

#import "CaptureViewController.h"

@interface CaptureViewController ()
@property (strong, nonatomic) UIImagePickerController *imgPicker;
@end

@implementation CaptureViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.imgPicker = [[UIImagePickerController alloc] init];
    self.imgPicker.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)cameraTapped:(id)sender {
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        //defaults to still image
        //self.imgPicker.mediaTypes = ...
        [self presentViewController:self.imgPicker animated:YES completion:^{
            NSLog(@"Completed camera");
        }];
    }
}

- (IBAction)drawTapped:(id)sender {
}

- (IBAction)shareTapped:(id)sender {
}

#pragma mark UIImagePickerDelegate
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    NSLog(@"Completed: %@",info);
    self.imgMainView.image = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
    [picker dismissViewControllerAnimated:YES completion:nil];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    NSLog(@"Canceled");
}
@end

//
//  ViewController.m
//  MyCameraApp
//
//  Created by Rohan Aurora on 5/8/14.
//  Copyright (c) 2014 Rohan Aurora. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{

[super viewDidLoad];


}

-(IBAction) TakePhoto {
    
    UIImagePickerController *picker1 = [[UIImagePickerController alloc] init];
    picker1.delegate = self;
    picker1.allowsEditing = YES;
    [picker1 setSourceType:UIImagePickerControllerSourceTypeCamera];
    [self presentViewController:picker1 animated:YES completion:nil];
    
}


-(IBAction) ChooseExisting {
    UIImagePickerController *picker2 = [[UIImagePickerController alloc] init];
    picker2.delegate = self;
    picker2.allowsEditing = YES;
    [picker2 setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    [self presentViewController:picker2 animated:YES completion:nil];
}


-(void) imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    myImageView.image = [info objectForKey:UIImagePickerControllerEditedImage];

    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void) imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

//  Displays iAds to your iOS app

- (AppDelegate *) appdelegate {
    return (AppDelegate *)[[UIApplication sharedApplication] delegate];
}

-(void) viewWillAppear:(BOOL)animated{
    
    self.appleAd = [[self appdelegate] appleAd];
    self.appleAd.delegate = self;
    
    [self.appleAd setFrame:CGRectMake(0,0,320,self.view.frame.size.height)];
    [self.view addSubview:self.appleAd];
}

-(void) viewWillDisappear:(BOOL)animated{
    self.appleAd.delegate = nil;
    self.appleAd=nil;
    [self.appleAd removeFromSuperview];
}

-(void)bannerViewDidLoadAd:(ADBannerView *)banner{
    NSLog(@"ads loaded");
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    [self.appleAd setAlpha:1];
    [UIView commitAnimations];
}

-(void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error{
    NSLog(@"ads not loaded");
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    [self.appleAd setAlpha:1];
    [UIView commitAnimations];
}


-(IBAction) shareThis {
    
    

        NSString *shareString = @"Check out this awesome 'Camera App'";
    
       UIImage *shareImage = [UIImage imageNamed:@"icon120.png"];
    
    
        NSURL *shareUrl = [NSURL URLWithString:@"http://therohanaurora.com"];
    
        NSArray *activityItems = [NSArray arrayWithObjects:shareString, shareImage, shareUrl, nil];
     
        UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:nil];
    
    
        activityViewController.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    
    
        activityViewController.excludedActivityTypes = @[UIActivityTypePrint, UIActivityTypeCopyToPasteboard, UIActivityTypeAssignToContact, UIActivityTypeSaveToCameraRoll, UIActivityTypeAirDrop, UIActivityTypeAddToReadingList];
    
    
        [self presentViewController:activityViewController animated:YES completion:nil];

}
@end

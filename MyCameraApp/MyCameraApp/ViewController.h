//
//  ViewController.h
//  MyCameraApp
//
//  Created by Rohan Aurora on 5/8/14.
//  Copyright (c) 2014 Rohan Aurora. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import <iAd/iAd.h>
#import <Social/Social.h>

@interface ViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate, ADBannerViewDelegate >

{

    UIImage *myImage;
    
    IBOutlet UIImageView *myImageView;
    
}

-(IBAction) shareThis;

-(IBAction)TakePhoto;
-(IBAction)ChooseExisting;
@property (strong, nonatomic) ADBannerView *appleAd;

@end
